(deftheme i-like-this-combo
  "Created 2018-12-27.")

(custom-theme-set-variables
 'i-like-this-combo
 '(frame-background-mode (quote dark))
 '(ibuffer-saved-filter-groups (quote (("programming-mode" ("Go" (used-mode . go-mode)) ("Test" (or (filename . ".*.feature") (filename . ".*.rb"))) ("Text" (or (used-mode . text-mode) (used-mode . fundamental-mode))) ("HTML" (or (used-mode . html-mode) (used-mode . js-mode) (used-mode . js2-mode))) ("Shells" (used-mode . shell-mode)) ("Star Buffers" (name . "^\\*"))))))
 '(ibuffer-saved-filters (quote (("crown" ((filename . ".*/crown/*"))) ("collab" (filename . ".*/collaboratory-www/*")) ("gonoble-models" ((filename . ".*/gonoble/models/*"))) ("No Star Files" ((not name . "^*$*"))) ("gnus" ((or (mode . message-mode) (mode . mail-mode) (mode . gnus-group-mode) (mode . gnus-summary-mode) (mode . gnus-article-mode)))) ("programming" ((or (mode . emacs-lisp-mode) (mode . cperl-mode) (mode . c-mode) (mode . java-mode) (mode . idl-mode) (mode . lisp-mode)))))))
 '(large-file-warning-threshold nil)
 '(magit-stash-arguments (quote ("--include-untracked")))
 '(org-fontify-whole-heading-line t)
 '(package-selected-packages (quote (git-link go-autocomplete go-complete go-direx go-dlv go-eldoc go-errcheck go-fill-struct go-gen-test go-guru go-imports go-mode go-playground go-rename go-stacktracer go-tag magit-filenotify magit-find-file magithub use-package enh-ruby-mode magit solarized-theme paganini-theme yoshi-theme eagle-eye lexbind-mode sx browse-kill-ring feature-mode dumb-jump ido-ubiquitous ido-better-flex smex ag ido-vertical-mode flycheck-yamllint yaml-mode)))
 '(split-height-threshold 100)
 '(window-divider-default-right-width 1)
 '(blink-cursor-mode nil)
 '(column-number-mode nil)
 '(global-font-lock-mode t)
 '(tool-bar-mode nil)
 '(window-divider-mode t))

(custom-theme-set-faces
 'i-like-this-combo
 '(default ((t (:height 130)))))

(provide-theme 'i-like-this-combo)
