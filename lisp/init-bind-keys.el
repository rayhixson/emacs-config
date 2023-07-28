;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Key bindings
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;; most useless function ever
(global-unset-key (kbd "C-t"))

;; also not used
(global-unset-key (kbd "M-l"))

(setq mac-command-modifier 'meta) ;; Sets the command (Apple) key as Meta

(use-package bind-key)
(bind-keys*
 ("C-M-b" . ido-switch-buffer)
 ([\M-up] . scroll-down-line)
 ([\M-down] . scroll-up-line)

 ;; Function key bindings
 ([f2] . compile)
 ([f3] . revert-buffer)
 ([f4] . menu-bar-next-tag)
 ([f6] . go-guru-referrers)
 ([\S-f7] . previous-error)
 ([f7] . next-error)
 ([f8] . shell)
 ([\S-f8] . rename-buffer)

 ("C-j" . goto-line)
 ;; iBuffer is subborn about this key:
 ;;(define-key ibuffer-mode-map (kbd "M-o") nil)
 ("M-o" . other-window)
 ("M-m" . ag-regexp)
 ("C-o" . recentf-open-files)
 ("M-i" . ibuffer)

 ("M-`" . other-frame)

 ((kbd "<M-right>") . next-buffer)
 ((kbd "<M-left>") . previous-buffer)

 ;; this used to be default
 ("M-*" . pop-tag-mark)

 ((kbd "C-M-f") . find-file)

 ((kbd "C-x k") . kill-this-buffer)

 ((kbd "C-s") . swiper))

(provide 'init-bind-keys)

