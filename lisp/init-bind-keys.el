;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Key bindings
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; most useless function ever
(global-unset-key (kbd "C-t"))

;; also not used
(global-unset-key (kbd "M-l"))

;; rebind these below
;;(global-unset-key (

(setq mac-command-modifier 'meta) ;; Sets the command (Apple) key as Meta

(setq
 backup-by-copying t      ; don't clobber symlinks
 backup-directory-alist
 '(("." . "~/.saves/"))    ; don't litter my fs tree
 delete-old-versions t
 kept-new-versions 6
 kept-old-versions 2)

(use-package bind-key
	:straight t)
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
 ("C-o" . find-file-at-point)
;; ("C-s" . isearch-forward)
 ("M-o" . other-window)
 ("M-k" . windmove-right)
 ("M-j" . windmove-left)
 ("M-`" . other-frame)
 ("M-*" . pop-tag-mark)
 ("M-i" . ibuffer)
;; ("M-m" . ag-regexp)
 ("<M-right>" . next-buffer)
 ("<M-left>" . previous-buffer)
 ("C-M-f" . find-file))

(defun my-kill-this-buffer ()
  "Kill the current buffer safely."
  (interactive)
  (kill-buffer (current-buffer)))

(global-set-key (kbd "C-x k") #'my-kill-this-buffer)

(provide 'init-bind-keys)

