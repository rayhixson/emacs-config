
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(require 'package)
 (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/") t)
 (add-to-list
   'package-archives
   '("marmalade" . "http://marmalade-repo.org/packages/") t)

(require 'better-defaults)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(column-number-mode t)
 '(custom-safe-themes
   (quote
    ("6c7db7fdf356cf6bde4236248b17b129624d397a8e662cf1264e41dab87a4a9a" "1e67765ecb4e53df20a96fb708a8601f6d7c8f02edb09d16c838e465ebe7f51b" "ec6fc99e90a4826af95c53fc1af2fed94f3e164a5041282183f5b89a01f4c001" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" default)))
 '(egg-enable-tooltip t)
 '(erc-autojoin-channels-alist (quote (("irc.rizon.net" "moochiken"))))
 '(erc-nick "ray")
 '(erc-server "10.22.11.250:6667")
 '(global-font-lock-mode t)
 '(gud-gdb-command-name "gdb --annotate=1")
 '(ibuffer-saved-filter-groups
   (quote
    (("programming-mode"
      ("Go"
       (used-mode . go-mode))
      ("Test"
       (or
        (filename . ".*.feature")
        (filename . ".*.rb")))
      ("Text"
       (used-mode . text-mode))
      ("Javascript"
       (used-mode . js2-mode))
      ("HTML"
       (used-mode . html-mode))
      ("Shells"
       (used-mode . shell-mode))
      ("Star Buffers"
       (name . "^\\*"))))))
 '(ibuffer-saved-filters
   (quote
    (("crown"
      ((filename . ".*/crown/*")))
     ("collab"
      (filename . ".*/collaboratory-www/*"))
     ("gonoble-models"
      ((filename . ".*/gonoble/models/*")))
     ("No Star Files"
      ((not name . "^*$*")))
     ("gnus"
      ((or
        (mode . message-mode)
        (mode . mail-mode)
        (mode . gnus-group-mode)
        (mode . gnus-summary-mode)
        (mode . gnus-article-mode))))
     ("programming"
      ((or
        (mode . emacs-lisp-mode)
        (mode . cperl-mode)
        (mode . c-mode)
        (mode . java-mode)
        (mode . idl-mode)
        (mode . lisp-mode)))))))
 '(large-file-warning-threshold nil)
 '(load-home-init-file t t)
 '(package-selected-packages
   (quote
    (ido-ubiquitous ido-better-flex smex ag ido-vertical-mode go-eldoc flycheck-yamllint yaml-mode magit magithub yoshi-theme go-guru go-autocomplete go-complete go-mode go-playground go-rename go-stacktracer golint paganini-theme better-defaults)))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

; miscellaneous stuff I like
(setq ring-bell-function 'ignore)
(desktop-save-mode 1)
(setq-default indicate-empty-lines t)
(setq bookmark-save-flag 1)
(auto-save-mode -1)
(recentf-mode 1)
(fset 'yes-or-no-p 'y-or-n-p)
(setq-default tab-width 4)

;; open file to last known location
(setq save-place-file "~/.emacs.d/saveplace")
(setq-default save-place t)
(require 'saveplace)

;; browse-kill-ring
(when (require 'browse-kill-ring nil 'noerror)
  (browse-kill-ring-default-keybindings))

(global-set-key "\C-cy" '(lambda ()
   (interactive)
   (popup-menu 'yank-menu)))

;; auto revert buffers when a file changes outside the buffer
(global-auto-revert-mode 1)

;; hide passwords
(add-hook 'comint-output-filter-functions 'comint-watch-for-password-prompt )

;; sudo helper
(defun sudo-find-file (file-name)
  "Like find file, but opens the file as root."
  (interactive "FSudo Find File: ")
  (let ((tramp-file-name (concat "/sudo::" (expand-file-name file-name))))
    (find-file tramp-file-name)))

(make-hippie-expand-function 
  '(try-expand-dabbrev-visible
    try-expand-dabbrev-from-kill 
    try-expand-dabbrev-all-buffers 
    try-complete-file-name-partially 
    try-complete-file-name))

;; match parenthesis
(global-set-key "%" 'match-paren)
(defun match-paren (arg)
  "Go to the matching parenthesis if on parenthesis otherwise insert %."
  (interactive "p")
  (cond ((looking-at "\\s\(") (forward-list 1) (backward-char 1))
        ((looking-at "\\s\)") (forward-char 1) (backward-list 1))
        (t (self-insert-command (or arg 1)))))

;; Go Lang ---------------------

(defun my-go-mode-hook ()
  ; Use goimports instead of gofmt
  (setq gofmt-command "goimports")
  ; Call Gofmt before saving
  (add-hook 'before-save-hook 'gofmt-before-save)
  
  ; Customize compile command to run go build
  (if (not (string-match "go" compile-command))
      (set (make-local-variable 'compile-command)
           "go build -v && go test -v && go vet"))

  (go-eldoc-setup))
(add-hook 'go-mode-hook 'my-go-mode-hook)

;; Auto complete of Go seems to be a pig - at least in Vagrant
(defun auto-complete-for-go ()
  (auto-complete-mode 1))
(add-hook 'go-mode-hook 'auto-complete-for-go)

(with-eval-after-load 'go-mode
  (require 'go-autocomplete))

;; End Go Lang -------------------

;; hl-line-mode - highlight the cursor line
(global-hl-line-mode t)
(set-face-foreground 'hl-line nil)
(set-face-background 'hl-line "gray13")

;; performance improvment that breaks some of vc?
(remove-hook 'find-file-hooks 'vc-find-file-hook)

;; Ruby customization
(setq ruby-indent-level 2)

;; IDO mode
(require 'ido)
(ido-mode t)

(global-set-key
 "\M-x"
 (lambda ()
   (interactive)
   (call-interactively
    (intern
     (ido-completing-read
      "M-x "
      (all-completions "" obarray 'commandp))))))

(ido-vertical-mode t)
(setq ido-vertical-define-keys 'C-n-and-C-p-only)

;; Use ido to find files in ibuffer
(defun ibuffer-ido-find-file (file &optional wildcards)
  "Like `ido-find-file', but default to the directory of the buffer at point."
  (interactive
   (let ((default-directory
           (let ((buf (ibuffer-current-buffer)))
             (if (buffer-live-p buf)
                 (with-current-buffer buf
                   default-directory)
               default-directory))))
     (list (ido-read-file-name "Find file: " default-directory) t)))
  (find-file file wildcards))

(add-hook 'ibuffer-mode-hook
          (lambda ()
            (define-key ibuffer-mode-map "\C-x\C-f"
              'ibuffer-ido-find-file)
            (ibuffer-switch-to-saved-filter-groups "programming-mode")))

;;; Smex - enhances IDO
(autoload 'smex "smex"
  "Smex is a M-x enhancement for Emacs, it provides a convenient interface to
your recently and most frequently used commands.")

(global-set-key (kbd "M-x") 'smex)

;; ido-better-flex is being used to have a 'better' fuzzy match algorithm for smex. Uninstall if not likey.

;; ido-ubiquitous is being used - how is that showing up?

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Customize ibuffer and directory name displays for our projectss
;; Set the icon and frame titles %f file name, %b buffer name
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(setq icon-title-format "%b")
(setq frame-title-format "%b - %f")

(require 'ibuffer)
;; And then customize ibuffer
;; Use human readable Size column instead of original one
(define-ibuffer-column size-h
  (:name "Size" :inline t)
  (cond
   ((> (buffer-size) 1000000) (format "%7.3fM" (/ (buffer-size) 1000000.0)))
   ((> (buffer-size) 1000) (format "%7.0fk" (/ (buffer-size) 1000.0)))
   (t (format "%8d" (buffer-size)))))

;; The following code adds a ‘dirname’ format to ibuffer to shorten the filename
;; and show only the directory:

(defvar filename-subs
  '(("~/go/src/github.com/treetopllc/" . "[ttc]")
	("/$" . "")
	("~/go/src/github.com/treetopllc/gonoble/" . "[gonoble]/")
	("~/go/src/github.com/treetopllc/gonoble/ext/cucumber/" . "[go-cuc]/")
	("~/go/src/github.com/treetopllc/collaboratory-www/" . "[collaboratory-www]/")
	("~/go/src/github.com/treetopllc/nobleweb/" . "[nobleweb]/")
	("~/go/src/github.com/treetopllc/noble-go-sdk/" . "[sdk]/")))

(defvar absolute-filename-subs
  '(("/Users/ray/go/src/github.com/treetopllc/" . "[ttc]")
	("/$" . "")
	("/Users/ray/go/src/github.com/treetopllc/gonoble/" . "[gonoble]/")
	("/Users/ray/go/src/github.com/treetopllc/gonoble/ext/cucumber/" . "[go-cuc]/")
	("/Users/ray/go/src/github.com/treetopllc/collaboratory-www/" . "[collaboratory-www]/")
	("/Users/ray/go/src/github.com/treetopllc/nobleweb/" . "[nobleweb]/")
	("/Users/ray/go/src/github.com/treetopllc/noble-go-sdk/" . "[sdk]/")))

(defun str-replace-all (str pats)
  (if (null pats)
      str
    (let* ((pat (car pats))
       (lhs (car pat))
       (rhs (cdr pat)))
      (replace-regexp-in-string lhs rhs (str-replace-all str (cdr pats))))))

(define-ibuffer-column my-filename-and-process
  (:name "Filename/Process"
   :header-mouse-map ibuffer-filename/process-header-map
   :summarizer
   (lambda (strings)
     (setq strings (delete "" strings))
     (let ((procs 0)
	   (files 0))
       (dolist (string strings)
	 (if (string-match "\\(?:\\`([[:ascii:]]+)\\)" string)
	     (progn (setq procs (1+ procs))
		    (if (< (match-end 0) (length string))
			(setq files (1+ files))))
	   (setq files (1+ files))))
       (concat (cond ((zerop files) "No files")
		     ((= 1 files) "1 file")
		     (t (format "%d files" files)))
	       ", "
	       (cond ((zerop procs) "no processes")
		     ((= 1 procs) "1 process")
		     (t (format "%d processes" procs)))))))
  (let ((proc (get-buffer-process buffer))
	(filename (ibuffer-make-column-filename buffer mark)))
    (if proc
	(concat (propertize (format "(%s %s)" proc (process-status proc))
			    'font-lock-face 'italic)
		(if (> (length filename) 0)
		    (format " %s" filename)
		  ""))
	(str-replace-all filename filename-subs))))

;; nearly all of this is the default layout
(setq ibuffer-formats
      '((mark modified read-only " "
			  (name 30 30 :left)
			  " "
			  my-filename-and-process)
		(mark modified read-only " "
              (name 30 30 :left :elide) ; change: 30s were originally 18s
              " "
              (size 9 -1 :right)
              " "
              (mode 16 16 :left :elide)
              " " filename-and-process)))

;; customize mode-line-format
(defun modeline-dir-abbrev ()
  (str-replace-all default-directory absolute-filename-subs))

(defun killmylandlord ()
  (kill-buffer (current-buffer)))

(setq-default mode-line-format
      (list ""
            'mode-line-modified
            "%25b--"
            " ["
            '(:eval (modeline-dir-abbrev))
            "] "
            "%[("
            'mode-name
            "%n"
            'mode-line-process
            ")%]--"
             "L%l--"
             "C%c--"
            '(-3 . "%P")
            "-%-"))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Key bindings
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(setq mac-command-modifier 'meta) ;; Sets the command (Apple) key as Meta

(global-set-key [\M-up] 'scroll-one-line-behind)
(global-set-key [\M-down] 'scroll-one-line-ahead)

; Function key bindings
(global-set-key [f2] 'compile)
(global-set-key [f3] 'revert-buffer)
(global-set-key [f4] 'menu-bar-next-tag)
(global-set-key [\S-f7] 'previous-error)
(global-set-key [f7] 'next-error)
(global-set-key [f8] 'shell)
(global-set-key [\S-f8] 'rename-buffer)

(global-unset-key "\C-j")
(global-set-key "\C-j" 'goto-line)
;; iBuffer is subborn about this key:
(define-key ibuffer-mode-map (kbd "M-o") nil)
(global-unset-key "\M-o")
(global-set-key "\M-o" 'other-window)
(global-unset-key "\M-m")
(global-set-key "\M-m" 'ag-regexp)
(global-unset-key "\M-p")
(global-set-key "\M-p" 'split-window-below)
(global-unset-key "\C-o")
(global-set-key "\C-o" 'recentf-open-files)
(global-unset-key "\M-i")
(global-set-key "\M-i" 'ibuffer)

(global-set-key "\M-`" 'other-frame)

(global-unset-key (kbd "<M-right>"))
(global-set-key (kbd "<M-right>") 'next-buffer)
(global-unset-key (kbd "<M-left>"))
(global-set-key (kbd "<M-left>") 'previous-buffer)

;; this used to be default
(global-set-key "\M-*" 'pop-tag-mark)

(global-unset-key (kbd "C-M-b"))
(global-set-key (kbd "C-M-b") 'switch-to-buffer)
(global-unset-key (kbd "C-M-f"))
(global-set-key (kbd "C-M-f") 'find-file)

(global-set-key (kbd "C-x g") 'magit-status)

(global-set-key (kbd "C-x k") 'kill-this-buffer)

(defun start-treetop()
  "Do the things"
  (interactive)
  (split-window-right)
  (shell "shell-run")
  (shell "shell-web")
  (shell "shell-collab")
  (shell "shell-log")
  (shell "shell-test")
  (shell "shell-main"))

(cd "~/go/src/github.com/treetopllc/gonoble/")
(start-treetop)
