;; rays-custom-effort
(defun eshell-git-prompt-rays ()
  "Eshell Git prompt with oh-my-zsh's robbyrussell theme.

It looks like:

┌─[ray@MacBook-Pro.local]──[15:13]──[/Users/ray/dev]
└─> $ "
  ;; Prompt components
  (let (beg dir epe-git-branch git-dirty end)
    ;; Beg: start symbol
    (setq beg
          (with-face "➜" (if (eshell-git-prompt-exit-success-p)
                            'eshell-git-prompt-exit-success-face 'eshell-git-prompt-exit-fail-face)))

    ;; Dir: current working directory
    (setq dir (with-face (eshell-git-prompt--shorten-directory-name)
                'eshell-git-prompt-directory-face))

    ;; Git: branch/detached head, dirty status
    (when (eshell-git-prompt--git-root-dir)
      (setq eshell-git-prompt-branch-name (eshell-git-prompt--branch-name))

      (setq epe-git-branch
            (concat
             (with-face "git:(" 'eshell-git-prompt-robyrussell-git-face)
             (with-face (eshell-git-prompt--readable-branch-name) 'eshell-git-prompt-robyrussell-branch-face)
             (with-face ")" 'eshell-git-prompt-robyrussell-git-face)))

      (setq git-dirty
            (when (eshell-git-prompt--collect-status)
              (with-face "✗" 'eshell-git-prompt-robyrussell-git-dirty-face))))

    ;; End: To make it possible to let `eshell-prompt-regexp' to match the full prompt
    (setq end (propertize "$" 'invisible t))

    ;; Build prompt
    ;(concat (mapconcat #'identity (-non-nil (list beg dir epe-git-branch git-dirty)) " ")
            ;end
    (concat
     (propertize "┌─[" 'face `(:foreground "green"))
     (propertize (user-login-name) 'face `(:foreground "red"))
     (propertize "@" 'face `(:foreground "green"))
     (propertize (epe-git-branch) 'face `(:foreground "blue"))
     (propertize "]──[" 'face `(:foreground "green"))
     (propertize (format-time-string "%H:%M" (current-time)) 'face `(:foreground "yellow"))
     (propertize "]──[" 'face `(:foreground "green"))
     (propertize (concat (eshell/pwd)) 'face `(:foreground "white"))
     (propertize "]\n" 'face `(:foreground "green"))
     (propertize "└─>" 'face `(:foreground "green"))
     (propertize (if (= (user-uid) 0) " # " " $ ") 'face `(:foreground "green"))
     end
     " ")))

(defconst eshell-git-prompt-rays-regexp "^[^$\n]*\\\$ ")

(provide 'rays-eshell-prompt)
