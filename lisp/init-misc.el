;; miscellaneous stuff I like

(add-to-list 'completion-styles 'initials t)

;; TABS CONFIG
(setq tab-always-indent 'complete)
;; don't insert tabs for spaces
(setq-default indent-tabs-mode nil)
;; default tabs display width
(setq-default tab-width 2)

;; tab setting for shell-script mode
(setq sh-basic-offset 2)

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

;; when to split windows automatically?
(setq
 split-height-threshold 120)

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
	;; Ruby etal support for finding definitions
	:config
	(dumb-jump-mode))

(use-package swiper)

(use-package ag)

(use-package markdown-mode
	:config
	;; use this one for markdown-preview
	(setq markdown-command '("code" "-"))
	;; use this for 'markdown-open
	(setq markdown-open-command "code"))

;; open file to last known location
(use-package saveplace)
(setq save-place-file "~/.emacs.d/saveplace")
(save-place-mode)

;; performance improvment that breaks some of vc?
(remove-hook 'find-file-hooks 'vc-find-file-hook)

;(use-package window-purpose)
;(purpose-mode)

(use-package fzf
  :bind
    ;; Don't forget to set keybinds!
  :config
  (setq fzf/args "-x --color bw --print-query --margin=1,0 --no-hscroll"
        fzf/executable "fzf"
        fzf/git-grep-args "-i --line-number %s"
        ;; command used for `fzf-grep-*` functions
        ;; example usage for ripgrep:
        ;; fzf/grep-command "rg --no-heading -nH"
        fzf/grep-command "grep -nrH"
        ;; If nil, the fzf buffer will appear at the top of the window
        fzf/position-bottom t
        fzf/window-height 15))

;;(use-package org)

;; silver searcher flags
(setq ag-arguments '("--smart-case" "--stats" "--hidden" "--all-types" "--path-to-ignore" "/Users/rhixson/dotfiles/.ignore"))

(use-package all-the-icons)

(when (display-graphic-p)
  (require 'all-the-icons))

;; Color the cursor line
(global-hl-line-mode 1)  ;; Enable globally
(set-face-background 'hl-line "#121212")  ;; Light gray color
;; other options
;; Very Dark Gray → #1E1E1E
;; 	2.	Almost Black → #121212
;; Dim White: #333333 (Dark Gray)
;; Soft Blue: #224466 (Deep Blue)
;; Muted Cyan: #224455 (Dark Cyan-Blue)
;; Dark Sepia: #3A2F2F (Warm Dark Brown)

;; Highlight cursor postion after movement
(use-package pulse
  :defer t
  :init (setq pulse-delay 0.1
              pulse-iterations 10)
  (defun pulse-line (&rest _)
          (pulse-momentary-highlight-one-line (point)))
  (dolist (command '(other-window
                     windmove-do-window-select
                     mouse-set-point
                     mouse-select-window))
    (advice-add command :after #'pulse-line)))

;; Enable Vi DOT '.' command
(use-package dot-mode
  :config (global-dot-mode t))

(provide 'init-misc)
;;; init-misc.el ends here
