;;; kubernetes-helm-autoloads.el --- automatically extracted autoloads  -*- lexical-binding: t -*-
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "kubernetes-helm" "kubernetes-helm.el" (0 0
;;;;;;  0 0))
;;; Generated autoloads from kubernetes-helm.el

(autoload 'kubernetes-helm-dep-up "kubernetes-helm" "\
Run helm dep up on a directory.

DIRECTORY is the chart location.

\(fn DIRECTORY)" t nil)

(autoload 'kubernetes-helm-install "kubernetes-helm" "\
Run helm install.

NAMESPACE is the namespace.
DIRECTORY is the chart location.
VALUES-FILE is the override values.

\(fn NAMESPACE DIRECTORY VALUES-FILE)" t nil)

(autoload 'kubernetes-helm-upgrade "kubernetes-helm" "\
Run helm upgrade.

NAMESPACE is the namespace.
DIRECTORY si the chart location.
VALUES-FILE is the override values.

\(fn NAMESPACE DIRECTORY VALUES-FILE)" t nil)

(autoload 'kubernetes-helm-values "kubernetes-helm" "\
Get helm values for a namespace.

NAMESPACE is the namespace.

\(fn NAMESPACE)" t nil)

(autoload 'kubernetes-helm-template "kubernetes-helm" "\
Render chart template locally.

DIRECTORY is the location of the chart.

\(fn DIRECTORY)" t nil)

(register-definition-prefixes "kubernetes-helm" '("kubernetes-helm-"))

;;;***

;;;### (autoloads nil nil ("kubernetes-helm-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; kubernetes-helm-autoloads.el ends here
