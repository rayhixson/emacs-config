;; historically I liked: yoshi-theme and paganini-theme was what I was using???

;; this fixes:
;; error in process sentinel: Error retrieving: https://marmalade-repo.org/packages/archive-contents "incomprehensible buffer" [2 times]
(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")

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
 '(blink-cursor-delay 1)
 '(blink-cursor-mode t)
 '(browse-at-remote-remote-type-regexps
   '(("^github\\.com$" . "github")
     ("^bitbucket\\.org$" . "bitbucket")
     ("^gitlab\\.com$" . "gitlab")
     ("^git\\.savannah\\.gnu\\.org$" . "gnu")
     ("^gist\\.github\\.com$" . "gist")
     ("^git\\.sr\\.ht$" . "sourcehut")
     ("^.*\\.visualstudio\\.com$" . "ado")
     ("^pagure\\.io$" . "pagure")
     ("^.*\\.fedoraproject\\.org$" . "pagure")
     ("^.*\\.googlesource\\.com$" . "gitiles")
     ("^github\\.globalpay\\.com$" . "github")
     ("^bit\\.xenial\\.com$" . "bitbucket")))
 '(cgs-find-project-functions '(cgs-root))
 '(column-number-mode nil)
 '(compilation-message-face 'default)
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#839496")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(cursor-type 'box)
 '(custom-enabled-themes '(wheatgrass))
 '(custom-safe-themes
   '("8d412c0ed46b865312d6df5c1dfd1821d349dd3cba00049cf88c4ad34403597e" "833ddce3314a4e28411edf3c6efde468f6f2616fc31e17a62587d6a9255f4633" "d89e15a34261019eec9072575d8a924185c27d3da64899905f8548cbd9491a36" "fee7287586b17efbfda432f05539b58e86e059e78006ce9237b8732fde991b4c" "d537a9d42c6f5349d1716ae9be9a0645cc168f7aff2a8353819d570e5d02c0b3" "3e200d49451ec4b8baa068c989e7fba2a97646091fd555eca0ee5a1386d56077" "51ec7bfa54adf5fff5d466248ea6431097f5a18224788d0bd7eb1257a4f7b773" "12ce08742ff8678a6c716f3dcafff508c5df6a408eb91b5c0a04a9cb9671dde3" "62b5c93e1dab499efc36ed0a1955d21d859efd8582da7bacc74a8f95a86f6c41" "0fffa9669425ff140ff2ae8568c7719705ef33b7a927a0ba7c5e2ffcfac09b75" "830877f4aab227556548dc0a28bf395d0abe0e3a0ab95455731c9ea5ab5fe4e1" "7f1d414afda803f3244c6fb4c2c64bea44dac040ed3731ec9d75275b9e831fe5" "c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "b9e9ba5aeedcc5ba8be99f1cc9301f6679912910ff92fdf7980929c2fc83ab4d" "84d2f9eeb3f82d619ca4bfffe5f157282f4779732f48a5ac1484d94d5ff5b279" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "c221703cc604312f6f72349704f7329f80ccc6a261af769332ec80171b728cc0" "e61752b5a3af12be08e99d076aedadd76052137560b7e684a8be2f8d2958edc3" "ae65ccecdcc9eb29ec29172e1bfb6cadbe68108e1c0334f3ae52414097c501d2" "1a5e62d03a1c0c0c1ff46e00acf9d3d42be0f43481f01faef752b5d309d82080" "2809bcb77ad21312897b541134981282dc455ccd7c14d74cc333b6e549b824f3" "4318c8136e18752719d5df209ec2576f0559dd02b9bef6be334c2e6aff57a1e4" "1e67765ecb4e53df20a96fb708a8601f6d7c8f02edb09d16c838e465ebe7f51b" "6c7db7fdf356cf6bde4236248b17b129624d397a8e662cf1264e41dab87a4a9a" "26d49386a2036df7ccbe802a06a759031e4455f07bda559dcf221f53e8850e69" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default))
 '(describe-char-unidata-list
   '(name old-name general-category decomposition decimal-digit-value digit-value numeric-value mirrored iso-10646-comment))
 '(egg-enable-tooltip t)
 '(erc-modules
   '(autojoin button completion fill irccontrols list match menu move-to-prompt netsplit networks noncommands notifications readonly ring stamp track))
 '(erc-nick "raydondo")
 '(fci-rule-color "#073642")
 '(flycheck-posframe-border-width 5)
 '(frame-background-mode 'dark)
 '(global-font-lock-mode t)
 '(hydra-posframe-show-params
   '(:poshandler posframe-poshandler-frame-bottom-center :internal-border-width 15 :internal-border-color "#222222" :background-color "#222222") t)
 '(indent-tabs-mode nil)
 '(ivy-posframe-border-width 15)
 '(ivy-posframe-style 'frame-bottom-window-center)
 '(js-indent-level 2)
 '(large-file-warning-threshold nil)
 '(lsp-keymap-prefix "M-l")
 '(magit-stash-arguments nil)
 '(markdown-command "/usr/local/bin/Markdown.pl")
 '(org-fontify-whole-heading-line t)
 '(org-startup-truncated nil)
 '(package-selected-packages
   '(amx icomplete-vertical ido-ubiquitous ido-at-point ido-better-flex ido-vertical-mode fish-mode projectile all-the-icons-completion lsp-treemacs treemacs treemacs-all-the-icons treemacs-icons-dired treemacs-magit treemacs-tab-bar nginx-mode direx rcirc-notify circe go-errcheck go-rename go-gen-test go-imenu go-impl go-mode sly go-eldoc go-guru which-key magit-gh-pulls magit-gitflow exec-path-from-shell git-link browse-at-remote groovy-mode protobuf-mode all-the-icons-ibuffer powerline eshell-git-prompt eshell-prompt-extras fzf esh-autosuggest esh-buf-stack esh-help eshell-autojump eshell-fringe-status eshell-toggle fish-completion load-bash-alias starter-kit-eshell smart-mode-line smart-mode-line-powerline-theme unicode-fonts groovy-imports gradle-mode terraform-doc terraform-mode let-alist restclient-helm rjsx-mode sql-indent db-pg docker hcl-mode window-purpose swiper all-the-icons-dired all-the-icons magit-filenotify magit-find-file magithub use-package enh-ruby-mode magit paganini-theme yoshi-theme eagle-eye lexbind-mode browse-kill-ring feature-mode dumb-jump smex ag flycheck-yamllint yaml-mode))
 '(rcirc-authinfo '(("libera.chat" nickserv "raydondo" "Lr#4CmIZg#hbDaj@")))
 '(rcirc-default-nick "raydondo")
 '(rcirc-default-user-name "raydondo")
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#073642" 0.2))
 '(sml/mode-width (if (eq (powerline-current-separator) 'arrow) 'right 'full))
 '(sml/pos-id-separator
   '(""
     (:propertize " " face powerline-active1)
     (:eval
      (propertize " " 'display
                  (funcall
                   (intern
                    (format "powerline-%s-%s"
                            (powerline-current-separator)
                            (car powerline-default-separator-dir)))
                   'powerline-active1 'powerline-active2)))
     (:propertize " " face powerline-active2)))
 '(sml/pos-minor-modes-separator
   '(""
     (:propertize " " face powerline-active1)
     (:eval
      (propertize " " 'display
                  (funcall
                   (intern
                    (format "powerline-%s-%s"
                            (powerline-current-separator)
                            (cdr powerline-default-separator-dir)))
                   'powerline-active1 'sml/global)))
     (:propertize " " face sml/global)))
 '(sml/pre-id-separator
   '(""
     (:propertize " " face sml/global)
     (:eval
      (propertize " " 'display
                  (funcall
                   (intern
                    (format "powerline-%s-%s"
                            (powerline-current-separator)
                            (car powerline-default-separator-dir)))
                   'sml/global 'powerline-active1)))
     (:propertize " " face powerline-active1)))
 '(sml/pre-minor-modes-separator
   '(""
     (:propertize " " face powerline-active2)
     (:eval
      (propertize " " 'display
                  (funcall
                   (intern
                    (format "powerline-%s-%s"
                            (powerline-current-separator)
                            (cdr powerline-default-separator-dir)))
                   'powerline-active2 'powerline-active1)))
     (:propertize " " face powerline-active1)))
 '(sml/pre-modes-separator (propertize " " 'face 'sml/modes))
 '(solarized-contrast 'normal)
 '(split-height-threshold 100)
 '(sql-mode-hook '(sqlind-minor-mode))
 '(sublimity-mode t)
 '(tab-always-indent 'complete)
 '(tool-bar-mode nil))
                                        ;miscellaneous stuff I like
(add-to-list 'completion-styles 'initials t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;; ivy ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq ivy-count-format "(%d/%d) ")

(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "M-y") 'counsel-yank-pop)
(global-set-key (kbd "<f1> f") 'counsel-describe-function)
(global-set-key (kbd "<f1> v") 'counsel-describe-variable)
(global-set-key (kbd "<f1> l") 'counsel-find-library)
(global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
(global-set-key (kbd "<f2> u") 'counsel-unicode-char)
(global-set-key (kbd "<f2> j") 'counsel-set-variable)
(global-set-key (kbd "C-x b") 'ivy-switch-buffer)
(global-set-key (kbd "C-c v") 'ivy-push-view)
(global-set-key (kbd "C-c V") 'ivy-pop-view)

(ivy-rich-mode 1)
(setcdr (assq t ivy-format-functions-alist) #'ivy-format-function-line)

;; These 2 are examples from the git page
(ivy-rich-modify-column
 'ivy-switch-buffer
 'ivy-rich-switch-buffer-major-mode
 '(:width 20 :face error))
(ivy-rich-modify-columns
 'ivy-switch-buffer
 '((ivy-rich-switch-buffer-size (:align right))
   (ivy-rich-switch-buffer-major-mode (:width 20 :face error))))

(all-the-icons-ivy-rich-mode 1)

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

(use-package smex)

;; try smex with ivy
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;; End ivy ;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; TABS CONFIG
(setq tab-always-indent 'complete)
;; don't insert tabs for spaces
(setq indent-tabs-mode nil)

;; using whitespace mode
;; (OPTIONAL) Visualize tabs as a pipe character - "|"
;; This will also show trailing characters as they are useful to spot.
;(setq whitespace-style '(face tabs tab-mark trailing))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(whitespace-tab ((t (:foreground "#636363")))))
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

(global-set-key "\C-cy" #'(lambda ()
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

;; match parenthesis
(show-paren-mode t)
;;(global-set-key "%" 'match-paren)
(defun match-paren (arg)
  "Go to the matching parenthesis if on parenthesis otherwise insert %."
  (interactive "p")
  (cond ((looking-at "\\s\(") (forward-list 1) (backward-char 1))
        ((looking-at "\\s\)") (forward-char 1) (backward-list 1))
        (t (self-insert-command (or arg 1)))))

;; company does IN-BUFFER text completion everywhere
;; it does file completion in the shell
;(global-company-mode t)

;; IELM Mode
(add-hook 'ielm-mode-hook #'(lambda () (set (make-local-variable 'company-backends) '(company-elisp))))

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

;(require 'company)
;(require 'company-go)

;; (add-to-list 'auto-mode-alist '("\\.proto\\'" . go-mode))

;(defun my-go-mode-hook ()
;  (set (make-local-variable 'company-backends) '(company-go))
;  (company-mode)

;  (setq tab-width 4)
;  (go-eldoc-setup)
 ;; Use goimports instead of go-fmt
;  (setq gofmt-command "goimports")
 ;; Call Gofmt before saving
;  (add-hook 'before-save-hook 'gofmt-before-save)
 ;; Customize compile command to run go build
;  (if (not (string-match "go" compile-command))
;      (set (make-local-variable 'compile-command)
          ;;"go build -v && go test -v && go vet"))
;           "go install -v")))
;(add-hook 'go-mode-hook 'my-go-mode-hook)

;(; Customize compile command to run go build
(setq compile-command "/usr/local/go/bin/go install -v")



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


;; Ruby etal support for finding definitions
(dumb-jump-mode)

;; performance improvment that breaks some of vc?
(remove-hook 'find-file-hooks 'vc-find-file-hook)

;; Ruby customization
(setq ruby-indent-level 2)

;; IDO mode
;(require 'ido)
;(ido-mode t)

;(global-set-key
; "\M-x"
; (lambda ()
;   (interactive)
;   (call-interactively
;    (intern
;     (ido-completing-read
;      "M-x "
;      (all-completions "" obarray 'commandp))))))

;(ido-vertical-mode t)
;(setq ido-vertical-define-keys 'C-n-and-C-p-only)

;; Use ido to find files in ibuffer
;(defun ibuffer-ido-find-file (file &optional wildcards)
;  "Like `ido-find-file', but default to the directory of the buffer at point."
;  (interactive
;   (let ((default-directory
;           (let ((buf (ibuffer-current-buffer)))
;             (if (buffer-live-p buf)
;                 (with-current-buffer buf
;                   default-directory)
;               default-directory))))
;     (list (ido-read-file-name "Find file: " default-directory) t)))
;  (find-file file wildcards))

;(add-hook 'ibuffer-mode-hook
;          (lambda ()
;            (define-key ibuffer-mode-map "\C-x\C-f"
;              'ibuffer-ido-find-file)
;            (ibuffer-switch-to-saved-filter-groups "programming-mode")))

;;; Smex - enhances IDO
;(autoload 'smex "smex"
;  "Smex is a M-x enhancement for Emacs, it provides a convenient interface to
;your recently and most frequently used commands.")

;(global-set-key (kbd "M-x") 'smex)

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
  '(("~/go/src/github.com/" . "[github]/")
    ("~/dev/engage-infra/" . "[tf]/")))

(defvar absolute-filename-subs
  '(("/Users/ray/go/src/github.com/" . "[github]/")
    ("/Users/ray/go/src/github.com/rayhixson/" . "[github/rh]/")
    ("/Users/ray/go/src/github.com/rayhixson/zenfoo/" . "[zenfoo]/")))

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

(setq ibuffer-saved-filter-groups
      '(("programming-mode"
         ("Terraform"
          (filename . ".+\\.tf"))
         ("YAML"
          (or
           (name . ".+\\.yaml")
           (name . ".+\\.yml")))
         ("Java / Groovy"
          (or
           (filename . ".+\\.java")
           (filename . ".+\\.groovy")))
         ("HTML / JSON"
          (or
           (used-mode . html-mode)
           (used-mode . mhtml-mode)
           (used-mode . css-mode)
           (used-mode . js-mode)
           (used-mode . js2-mode)
           (filename . ".+\\.json")))
         ("Scripts"
          (filename . ".+\\.sh"))
         ("Text"
          (or
           (used-mode . text-mode)))
         ("Shells"
          (or
           (used-mode . shell-mode)
           (used-mode . eshell-mode)))
         ("Magit"
          (name . ".*magit.*"))
         ("Go"
          (or
           (used-mode . go-mode)
           (used-mode . protobuf-mode)))
         ("DIR"
          (used-mode . dired-mode))
         ("Star Buffers"
          (name . "^\\*")))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; END Customize ibuffer
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

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

;; (eshell-git-prompt-use-theme "rays")
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
 ("C-M-b" . ivy-switch-buffer)
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
 ("M-o" . ace-window)
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

; ((kbd "C-s") . swiper-isearch)
; ((kbd "C-r") . swiper-backward)
; ((kbd "C-s") . isearch-forward))
 )

;; paganini is ok but a little too harsh in contrasts
;;(load-theme 'paganini :no-confirm)
;;(load-theme 'yoshi :no-confirm)
;;(load-theme 'wheatgrass 'no-confirm)
;;(load-theme 'deeper-blue 'no-confirm)
;;(load-theme 'manoj-dark 'no-confirm) ;; very high contrast

;;;;;;;;;;;;;;;;;
;; package notes

;; Completions related
;; company
;; ido
;; vertico
;; fish

;; notes
;; I just deleted company-fuzzy - may want it back

;; I just deleted these idos:
;;  ido-better-flex                0.2            installed             A better flex (fuzzy) algorithm for Ido.
;;  ido-ubiquitous                 20180122.1340  installed             Use ido (nearly) everywhere.

;; I just deleted these:
;  vertico                        1.4            installed             VERTical Interactive COmpletion
;  vertico-posframe               0.7.2          installed             Using posframe to show Vertico
;  vertico-prescient              20230221.1257  installed             prescient.el + Vertico


;;;;;;;;;;;;;;;;;;;; Begin ERC

;; enable notifications
(rcirc-track-minor-mode 1)

;;;;;;;;;;;;;;;;;;;; End ERC

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
(save-place-mode)

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

(use-package restclient
  :ensure t
  :mode (("\\.http\\'" . restclient-mode)))

;; svg is broken, use this until emacs 29 comes out - soon!
(add-to-list 'image-types 'svg)

;; this is not working, what if we do it last?
(setq-default save-place-mode t)


;; Custom macros
(fset 'go-err-block
      [?i ?f ?  ?e ?r ?r ?  ?! ?= ?  ?n ?i ?l ?  ?\{ return ?r ?e ?t ?u ?r ?n ?  ?e ?r ?r return ?\} return])

(defun start-shells()
  "Do the things"
  (interactive)
  (split-window-right)
  (eshell)
  (rename-buffer "shell-e")
  (shell)
  (rename-buffer "shell-main"))

(cd "~/dev/")
(start-shells)

