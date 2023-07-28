;; hack until emacs 29
(setq image-types (cons 'svg image-types))

;; historically I liked: yoshi-theme and paganini-theme was what I was using???


;;; TODO
;;; replace 'package with straight.el
;;; https://github.com/radian-software/straight.el
;;; then enable ido-better-flex in init-ido

(require 'package)

(add-to-list 'package-archives '("gnu"   . "https://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(eval-and-compile
  (setq use-package-always-ensure t
        use-package-expand-minimally t))

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

(require 'init-eshell)
(require 'init-git)
(require 'init-go)
(require 'init-java)
(require 'init-terraform)
(require 'init-guess-style)

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

