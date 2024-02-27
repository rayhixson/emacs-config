;; hack until emacs 29
(setq image-types (cons 'svg image-types))

(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 6))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

(straight-use-package 'use-package)

;;; TODO
;;; then enable ido-better-flex in init-ido

(add-to-list 'load-path "~/.emacs.d/lisp/")

(setq custom-file (locate-user-emacs-file "custom.el"))

(require 'init-bind-keys)
(require 'init-misc)
(require 'init-fonts)
(require 'init-themes)

(require 'init-ido)
(require 'init-company)
(require 'init-ibuffer)
(require 'init-modeline)

(require 'init-lsp)
(require 'init-eshell)
(require 'init-git)
(require 'init-go)
(require 'init-java)
(require 'init-groovy)
(require 'init-terraform)
(require 'init-yaml)
(require 'init-web-things)
(require 'init-guess-style)

(require 'init-experimental)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; ------------------------ Refactor all below this

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

;; this is not working, what if we do it last?
(setq-default save-place-mode t)

