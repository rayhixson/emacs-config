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

(setq custom-file (locate-user-emacs-file "custom-vars.el"))
(load custom-file 'noerror 'nomessage)

                                        ;miscellaneous stuff I like
(add-to-list 'completion-styles 'initials t)

;; TABS CONFIG
(setq tab-always-indent 'complete)
;; don't insert tabs for spaces
(setq indent-tabs-mode nil)

;; using whitespace mode
;; (OPTIONAL) Visualize tabs as a pipe character - "|"
;; This will also show trailing characters as they are useful to spot.

;;(setq whitespace-style '(face tabs tab-mark trailing))
(setq whitespace-display-mappings
      '((tab-mark 9 [124 9] [92 9]))) ; 124 is the ascii ID for '\|'
;;(global-whitespace-mode) ; Enable whitespace mode everywhere
;; END TABS CONFIG


(setq menu-bar-mode t)
(scroll-bar-mode -1)
(setq ring-bell-function 'ignore)
(desktop-save-mode 1)
(setq-default indicate-empty-lines t)
(setq bookmark-save-flag 1)
(auto-save-mode -1)
(recentf-mode 1)
(fset 'yes-or-no-p 'y-or-n-p)
;; default tabs display width
(setq-default tab-width 2)

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

(global-company-mode t)

;; IELM Mode
(add-hook 'ielm-mode-hook '(lambda () (set (make-local-variable 'company-backends) '(company-elisp))))

;; Making unicode work
(require 'unicode-fonts)
(unicode-fonts-setup)
(when (member "DejaVu Sans Mono" (font-family-list))
  (set-face-attribute 'default nil :font "DejaVu Sans Mono-11"))

;; Use DejaVu Sans Mono as a fallback in fontset-startup
;; before resorting to fontset-default.
(set-fontset-font "fontset-startup" nil "DejaVu Sans Mono"
                  nil 'append)

;; Use MyPrivateFont for the Unicode private use area.
(set-fontset-font "fontset-default"  '(#xe000 . #xf8ff)
                  "DejaVu Sans Mono")

;; for reference this seems to be the good one:
;; -*-DejaVu Sans Mono-normal-normal-normal-*-11-*-*-*-m-0-iso10646-1

;; Go Lang ---------------------

(require 'company)
(require 'company-go)

;; (add-to-list 'auto-mode-alist '("\\.proto\\'" . go-mode))

(defun my-go-mode-hook ()
  (set (make-local-variable 'company-backends) '(company-go))
  (company-mode)

  (setq tab-width 4)
 ;; Use goimports instead of go-fmt
  (setq gofmt-command "goimports")
 ;; Call Gofmt before saving
  (add-hook 'before-save-hook 'gofmt-before-save)
 ;; Customize compile command to run go build
  (if (not (string-match "go" compile-command))
      (set (make-local-variable 'compile-command)
          ;;"go build -v && go test -v && go vet"))
           "go install -v"))
  (go-eldoc-setup))
(add-hook 'go-mode-hook 'my-go-mode-hook)

;(; Customize compile command to run go build
(setq compile-command "/usr/local/go/bin/go install -v")

(require 'go-eldoc) ;; Don't need to require, if you install by package.el
(add-hook 'go-mode-hook 'go-eldoc-setup)


;; End Go Lang -------------------

;
;; -----BEGIN ------- THIS SECTION WORKS GREAT FOR JAVA but Requires 11 --------------------
;; Java Setup
                                        ;(use-package lsp-mode
                                        ;  :init
                                        ;  (setq lsp-prefer-flymake nil)
                                        ;  :demand t
                                        ;  :after jmi-init-platform-paths)

                                        ;(use-package lsp-ui
                                        ;  :config
                                        ;  (setq lsp-ui-doc-enable t
                                        ;        lsp-ui-sideline-enable t
                                        ;        lsp-ui-flycheck-enable t)
                                        ;  :after lsp-mode)

                                        ;(use-package dap-mode
                                        ;  :config
                                        ;  (dap-mode t)
                                        ;  (dap-ui-mode t))
                                        ;(require 'lsp-java)
                                        ;(add-hook 'java-mode-hook #'lsp)

;; ------------ END JAVA SETUP ----------------


;; Terraform
(require 'company)
(require 'company-terraform)
(defun my-terraform-mode-hook ()
  ;; Call terraform fmt before saving
  (add-hook 'before-save-hook 'terraform-format-buffer))
(add-hook 'terraform-mode-hook 'my-terraform-mode-hook)

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
  '(("~/dev/chockstone/" . "[chockstone]/")
    ("/$" . "")
    ("~/dev/spectre-api/" . "[spectre]/")
    ("~/dev/engage-infra/" . "[tf]/")))

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

(defun killmylandlord ()
  (kill-buffer (current-buffer)))

;; customize mode-line-format
(defun modeline-dir-abbrev ()
  (str-replace-all default-directory absolute-filename-subs))

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

                                        ;(setq sml/theme 'powerline)
                                        ;(sml/setup)

(setq
 backup-by-copying t      ; don't clobber symlinks
 backup-directory-alist
 '(("." . "~/.saves/"))    ; don't litter my fs tree
 delete-old-versions t
 kept-new-versions 6
 kept-old-versions 2)

;; BEGIN ESHELL SECTION
(add-hook 'eshell-mode-hook #'esh-autosuggest-mode)
(add-hook 'eshell-mode-hook
          (lambda () 
            (define-key eshell-mode-map (kbd "<tab>")
              (lambda () (interactive) (pcomplete-std-complete)))))

;; make history use ido
                                        ;  ((kbd "C-c C-l") . ido-eshell-comint-history)
                                        ;(defun ido-eshell-comint-history ()
                                        ;  "eshell & comint history with ido."
                                        ;  (interactive)
                                        ;  (if (or (member major-mode '(eshell-mode sql-interactive-mode))
                                        ;          (derived-mode-p 'comint-mode))
                                        ;     (let ((ring (if (eq major-mode 'eshell-mode)
                                        ;                   eshell-history-ring
                                        ;                   comint-input-ring)))
                                        ;       (insert
                                        ;        (ido-completing-read "History: "
                                        ;                             (delete-dups
                                        ;                              (ring-elements ring)))))
                                        ;    (message "Unsupported mode")))
:

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

(eshell-git-prompt-use-theme "rays")

(setq eshell-hist-ignoredups t
      eshell-prefer-lisp-functions nil)
;; END ESHELL SECTION

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Key bindings
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;; most useless function ever
(global-unset-key (kbd "C-t"))

;; also not used
(global-unset-key (kbd "M-l"))

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
(eval-after-load 'git-link
  '(progn
     (add-to-list 'git-link-remote-alist
                  '("bit\\.xenial\\.com" git-link-bitbucket))
     (add-to-list 'git-link-commit-remote-alist
                  '("bit\\.xenial\\.com" git-link-commit-bitbucket))
     (add-to-list 'git-link-remote-alist
                  '("github\\.globalpay\\.com" git-link-github))
     (add-to-list 'git-link-commit-remote-alist
                  '("github\\.globalpay\\.com" git-link-commit-github))))

;; open file to last known location
(require 'saveplace)
(setq save-place-file "~/.emacs.d/saveplace")
(save-place-mode 1)

;;
                                        ;(require 'window-purpose)
                                        ;(purpose-mode)

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
                                        ;(autoload 'guess-style-set-variable "guess-style" nil t)
                                        ;(autoload 'guess-style-guess-variable "guess-style")
                                        ;(autoload 'guess-style-guess-all "guess-style" nil t)
                                        ;(global-guess-style-info-mode)

                                        ;(add-hook 'c-mode-common-hook 'guess-style-guess-all)
                                        ;(add-hook 'javascript-mode-hook 'guess-style-guess-all)
                                        ;(add-hook 'mhtml-mode-hook 'guess-style-guess-all)
                                        ;(add-hook 'html-mode-hook 'guess-style-guess-all)
                                        ;(add-hook 'js-mode-hook 'guess-style-guess-all)
                                        ;(add-hook 'ruby-mode-hook 'guess-style-guess-all)
                                        ;(add-hook 'feature-mode-hook 'guess-style-guess-all)

;; save minibuffer history - this was already working for me, so not sure if this helps
(setq history-length 125)
(savehist-mode 1)


(use-package restclient
  :ensure t
  :mode (("\\.http\\'" . restclient-mode)))

(defun start-shells()
  "Do the things"
  (interactive)
  (split-window-right)
  (eshell)
  (rename-buffer "shell-tf")
  (eshell)
  (rename-buffer "shell-spectre")
  (eshell)
  (rename-buffer "shell-main"))

(cd "~/dev/")
(start-shells)

;; Custom macros
(fset 'go-err-block
      [?i ?f ?  ?e ?r ?r ?  ?! ?= ?  ?n ?i ?l ?  ?\{ return ?r ?e ?t ?u ?r ?n ?  ?e ?r ?r return ?\} return])

