;; historically I liked: yoshi-theme and paganini-theme was what I was using???

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/lisp/")

(require 'package)
(add-to-list
 'package-archives
 '("melpa" . "https://melpa.org/packages/") t)
(add-to-list
 'package-archives
 '("marmalade" . "https://marmalade-repo.org/packages/") t)

;; hl-line-mode - highlight the cursor line
;(global-hl-line-mode t)
;(set-face-foreground 'hl-line nil)
;(set-face-background 'hl-line "gray13")

;(require 'better-defaults)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cgs-find-project-functions (quote (cgs-root)))
 '(cgs-step-search-path "cucumber/**/*.rb")
 '(column-number-mode nil)
 '(custom-enabled-themes (quote (yoshi)))
 '(custom-safe-themes
	 (quote
		("1e67765ecb4e53df20a96fb708a8601f6d7c8f02edb09d16c838e465ebe7f51b" "6c7db7fdf356cf6bde4236248b17b129624d397a8e662cf1264e41dab87a4a9a" "26d49386a2036df7ccbe802a06a759031e4455f07bda559dcf221f53e8850e69" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default)))
 '(egg-enable-tooltip t)
 '(global-guess-style-info-mode t)
 '(gud-gdb-command-name "gdb --annotate=1")
 '(highlight-changes-colors (quote ("#d33682" "#6c71c4")))
 '(highlight-tail-colors
	 (quote
		(("#073642" . 0)
		 ("#546E00" . 20)
		 ("#00736F" . 30)
		 ("#00629D" . 50)
		 ("#7B6000" . 60)
		 ("#8B2C02" . 70)
		 ("#93115C" . 85)
		 ("#073642" . 100))))
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
			 (or
				(used-mode . text-mode)
				(used-mode . fundamental-mode)))
			("HTML"
			 (or
				(used-mode . html-mode)
				(used-mode . js-mode)
				(used-mode . js2-mode)))
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
 '(js-indent-level 2)
 '(large-file-warning-threshold nil)
 '(magit-stash-arguments nil)
 '(package-selected-packages
	 (quote
		(restclient-helm rjsx-mode sql-indent db-pg docker hcl-mode window-purpose moe-theme material-theme zoom sublimity swiper all-the-icons-dired all-the-icons git-link go-autocomplete go-complete go-direx go-dlv go-eldoc go-errcheck go-fill-struct go-gen-test go-guru go-imports go-mode go-playground go-rename go-stacktracer go-tag magit-filenotify magit-find-file magithub use-package enh-ruby-mode magit solarized-theme paganini-theme yoshi-theme eagle-eye lexbind-mode browse-kill-ring feature-mode dumb-jump ido-ubiquitous ido-better-flex smex ag ido-vertical-mode flycheck-yamllint yaml-mode)))
 '(solarized-contrast (quote normal))
 '(split-height-threshold 100)
 '(sql-mode-hook (quote (sqlind-minor-mode)))
 '(sublimity-mode t)
 '(tool-bar-mode nil)
 '(vc-annotate-background "#93a1a1")
 '(vc-annotate-color-map
	 (quote
		((20 . "#990A1B")
		 (40 . "#FF6E64")
		 (60 . "#cb4b16")
		 (80 . "#7B6000")
		 (100 . "#b58900")
		 (120 . "#DEB542")
		 (140 . "#546E00")
		 (160 . "#859900")
		 (180 . "#B4C342")
		 (200 . "#3F4D91")
		 (220 . "#6c71c4")
		 (240 . "#9EA0E5")
		 (260 . "#2aa198")
		 (280 . "#69CABF")
		 (300 . "#00629D")
		 (320 . "#268bd2")
		 (340 . "#69B7F0")
		 (360 . "#d33682"))))
 '(vc-annotate-very-old-color "#93115C")
 '(window-divider-default-right-width 1)
 '(window-divider-mode t)
 '(zoom-mode t nil (zoom))
 '(zoom-size (quote (0.618 . 0.618))))

(require 'go-autocomplete)
(require 'auto-complete-config)
(ac-config-default)

;miscellaneous stuff I like
(setq tab-always-indent 'complete)
(add-to-list 'completion-styles 'initials t)
;; don't insert tabs for spaces
(setq indent-tabs-mode nil)

(setq menu-bar-mode t)
(setq ring-bell-function 'ignore)
(desktop-save-mode 1)
(setq-default indicate-empty-lines t)
(setq bookmark-save-flag 1)
(auto-save-mode -1)
(recentf-mode 1)
(fset 'yes-or-no-p 'y-or-n-p)
;; default tabs display width
;; (setq-default tab-width 8)

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
(show-paren-mode t)
;;(global-set-key "%" 'match-paren)
(defun match-paren (arg)
  "Go to the matching parenthesis if on parenthesis otherwise insert %."
  (interactive "p")
  (cond ((looking-at "\\s\(") (forward-list 1) (backward-char 1))
        ((looking-at "\\s\)") (forward-char 1) (backward-list 1))
        (t (self-insert-command (or arg 1)))))

;; IELM Mode
(add-hook 'ielm-mode-hook '(lambda () (set (make-local-variable 'company-backends) '(company-elisp))))

;; Go Lang ---------------------

(defun my-go-mode-hook ()
  ; Use goimports instead of gofmt
  (setq gofmt-command "goimports")
  ; Call Gofmt before saving
  (add-hook 'before-save-hook 'gofmt-before-save)
  (go-eldoc-setup))
(add-hook 'go-mode-hook 'my-go-mode-hook)

;; Customize compile command to run go build
(setq compile-command "/usr/local/go/bin/go install -v")

;;(with-eval-after-load 'go-mode
;;  (require 'go-autocomplete))

;; End Go Lang -------------------

;; Ruby etal support for finding definitions
(dumb-jump-mode)

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

;; trying to get feature-mode to work
;; don't think this is needed; (setq feature-default-i18n-file "./gems/ruby-2.2.5/gems/gherkin-2.11.8/lib/gherkin/i18n.json")
(setq feature-step-search-path "*/**/*.rb")

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
	("~/go/src/github.com/treetopllc/batch-svc/" . "[batch-svc]/")
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

(require 'bind-key)
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

  ((kbd "C-x g") . magit-status)

  ((kbd "C-x k") . kill-this-buffer)

										;  ((kbd "C-s") . swiper))
  ((kbd "C-s") . isearch-forward))

;; most useless function ever
(global-unset-key (kbd "C-t"))

;; paganini is ok but a little too harsh in contrasts
;;(load-theme 'paganini :no-confirm)
;;(load-theme 'yoshi :no-confirm)

;;;;;;;;;  Solarized:
;; make the fringe stand out from the background
;(setq solarized-distinct-fringe-background t)

;; Don't change the font for some headings and titles
;;(setq solarized-use-variable-pitch nil)

;; make the modeline high contrast
;(setq solarized-high-contrast-mode-line t)

;; Use less bolding
;;(setq solarized-use-less-bold t)

;; Use more italics
;(setq solarized-use-more-italic t)

;; Use less colors for indicators such as git:gutter, flycheck and similar
; (setq solarized-emphasize-indicators nil)

;; Don't change size of org-mode headlines (but keep other size-changes)
;;(setq solarized-scale-org-headlines nil)

;; Avoid all font-size changes
;;(setq solarized-height-minus-1 1.0)
;;(setq solarized-height-plus-1 1.0)
;;(setq solarized-height-plus-2 1.0)
;;(setq solarized-height-plus-3 1.0)
;;(setq solarized-height-plus-4 1.0)

;(load-theme 'solarized-dark t)
;;;;;;;;;;;;;;;;;;;; End Solarized

(require 'git-link)

;; smooth scrolling ala Sublime
(require 'sublimity)
(require 'sublimity-scroll)
;; Sublime style minimap
;; (require 'sublimity-map) ;; experimental
;; Distraction free mode: Removes modelines, etc
;; (require 'sublimity-attractive)

;; zoom config



;; open file to last known location
(require 'saveplace)
(setq save-place-file "~/.emacs.d/saveplace")
(save-place-mode)

;;
(require 'window-purpose)
(purpose-mode)

;; Need these two lines to get aliases working with M-x !
(setq shell-file-name "zsh")
(setq shell-command-switch "-ic")

;; Kill colorized cucumber output in compile output mode
;(require 'ansi-color)
;(defun colorize-compilation-buffer ()
;  (let ((inhibit-read-only t))
;    (ansi-color-apply-on-region (point-min) (point-max))))
;(add-hook 'compilation-filter-hook 'colorize-compilation-buffer)

;; guess-style configs
(autoload 'guess-style-set-variable "guess-style" nil t)
(autoload 'guess-style-guess-variable "guess-style")
(autoload 'guess-style-guess-all "guess-style" nil t)
;(global-guess-style-info-mode)

(add-hook 'c-mode-common-hook 'guess-style-guess-all)
(add-hook 'javascript-mode-hook 'guess-style-guess-all)
(add-hook 'mhtml-mode-hook 'guess-style-guess-all)
(add-hook 'html-mode-hook 'guess-style-guess-all)
(add-hook 'js-mode-hook 'guess-style-guess-all)
(add-hook 'ruby-mode-hook 'guess-style-guess-all)
(add-hook 'feature-mode-hook 'guess-style-guess-all)

(use-package restclient
    :ensure t
    :mode (("\\.http\\'" . restclient-mode)))

(defun start-treetop()
  "Do the things"
  (interactive)
  (split-window-right)
  (shell "shell-run")
  (shell "shell-log")
  (shell "shell-test")
  (shell "shell-main"))

(cd "~/go/src/github.com/treetopllc/gonoble/")
(start-treetop)

;; this is not working, what if we do it last?
(setq-default save-place-mode t)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Custom macros
(fset 'go-err-block
   [?i ?f ?  ?e ?r ?r ?  ?! ?= ?  ?n ?i ?l ?  ?\{ return ?r ?e ?t ?u ?r ?n ?  ?e ?r ?r return ?\} return])

