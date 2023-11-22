;; BEGIN ESHELL SECTION
(use-package eshell-git-prompt
	:straight t)

(use-package eshell-prompt-extras
	:straight t)

(with-eval-after-load "esh-opt"
  (autoload 'epe-theme-lambda "eshell-prompt-extras")
  (setq eshell-highlight-prompt nil
        eshell-prompt-function 'epe-theme-lambda))
(add-hook 'eshell-mode-hook
          (lambda () 
            (define-key eshell-mode-map (kbd "<tab>")
              (lambda () (interactive) (pcomplete-std-complete)))))

;; make history use ido
;((kbd "C-c C-l") . ido-eshell-comint-history)
;(defun ido-eshell-comint-history ()
;  "eshell & comint history with ido."
;  (interactive)
;  (if (or (member major-mode '(eshell-mode sql-interactive-mode))
;          (derived-mode-p 'comint-mode))
;      (let ((ring (if (eq major-mode 'eshell-mode)
;                      eshell-history-ring
;                    comint-input-ring)))
;        (insert
;         (ido-completing-read "History: "
;                              (delete-dups
;                               (ring-elements ring)))))
;    (message "Unsupported mode")))

;; this was really golden, but I moved this functionality into
;; ~/.emacs.d/elpa/eshell-git-prompt-20200109.2250/eshell-git-prompt.el
;;
                                        ;(setq eshell-prompt-function
                                        ;(lambda ()
                                        ;  (concat
                                        ;   (propertize "┌─[" 'face `(:foreground "green"))
                                        ;   (propertize (user-login-name) 'face `(:foreground "red"))
                                        ;   (propertize "@" 'face `(:foreground "green"))
                                        ;   (propertize (git-branch) 'face `(:foreground "blue"))
                                        ;   (propertize "]──[" 'face `(:foreground "green"))
                                        ;   (propertize (format-time-string "%H:%M" (current-time)) 'face `(:foreground "yellow"))
                                        ;   (propertize "]──[" 'face `(:foreground "green"))
                                        ;   (propertize (concat (eshell/pwd)) 'face `(:foreground "white"))
                                        ;   (propertize "]\n" 'face `(:foreground "green"))
                                        ;   (propertize "└─>" 'face `(:foreground "green"))
                                        ;   (propertize (if (= (user-uid) 0) " # " " $ ") 'face `(:foreground "green"))
                                        ;   )))


(setq eshell-git-prompt-use-theme "robbyrussell")

;;
;; Need these two lines to get aliases working with M-x !
(setq shell-file-name "zsh")
(setq shell-command-switch "-ic")

(provide 'init-eshell)
