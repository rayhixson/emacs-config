;; miscellaneous stuff I like

(add-to-list 'completion-styles 'initials t)

;; TABS CONFIG
(setq tab-always-indent 'complete)
;; don't insert tabs for spaces
(setq indent-tabs-mode nil)
;; default tabs display width
(setq-default tab-width 2)

(menu-bar-mode 1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(setq ring-bell-function 'ignore)
(desktop-save-mode 1)
(setq-default indicate-empty-lines t)
(setq bookmark-save-flag 1)
(auto-save-mode -1)
(recentf-mode 1)
(fset 'yes-or-no-p 'y-or-n-p)

;; browse-kill-ring
(use-package browse-kill-ring
	:straight t
	:config
	;; M-y to invoke
  (browse-kill-ring-default-keybindings))

;; auto revert buffers when a file changes outside the buffer
(global-auto-revert-mode 1)

(setq
 backup-by-copying t      ; don't clobber symlinks
 backup-directory-alist
 '(("." . "~/.saves/"))    ; don't litter my fs tree
 delete-old-versions t
 kept-new-versions 6
 kept-old-versions 2)

;; hide passwords
(add-hook 'comint-output-filter-functions 'comint-watch-for-password-prompt )

;; sudo helper
(defun sudo-find-file (file-name)
  "Like find file, but opens the file as root."
  (interactive "FSudo Find File: ")
  (let ((tramp-file-name (concat "/sudo::" (expand-file-name file-name))))
    (find-file tramp-file-name)))

;; match parenthesis
(show-paren-mode t)
;;(global-set-key "%" 'match-paren)
(defun match-paren (arg)
  "Go to the matching parenthesis if on parenthesis otherwise insert %."
  (interactive "p")
  (cond ((looking-at "\\s\(") (forward-list 1) (backward-char 1))
        ((looking-at "\\s\)") (forward-char 1) (backward-list 1))
        (t (self-insert-command (or arg 1)))))

(make-hippie-expand-function 
 '(try-expand-dabbrev-visible
   try-expand-dabbrev-from-kill 
   try-expand-dabbrev-all-buffers 
   try-complete-file-name-partially 
   try-complete-file-name))

(use-package dumb-jump
	:straight t
	;; Ruby etal support for finding definitions
	:config
	(dumb-jump-mode))

(use-package swiper
	:straight t)

(use-package ag
	:straight t)

;; open file to last known location
(use-package saveplace
	:straight t)
(setq save-place-file "~/.emacs.d/saveplace")
(save-place-mode)

;; performance improvment that breaks some of vc?
(remove-hook 'find-file-hooks 'vc-find-file-hook)

(use-package window-purpose
	:straight t)
(purpose-mode)


(provide 'init-misc)
;;; init-misc.el ends here
