;;; eagle-eye-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "eagle-eye" "eagle-eye.el" (0 0 0 0))
;;; Generated autoloads from eagle-eye.el

(autoload 'eagle-eye-set-text-scaling "eagle-eye" "\


\(fn SCALING)" nil nil)

(autoload 'eagle-eye-set-zoom-step "eagle-eye" "\


\(fn STEP)" nil nil)

(autoload 'eagle-eye-mode "eagle-eye" "\
Toggle eagle-eye-mode

\(fn &optional ARG)" t nil)

(autoload 'eagle-eye-zoom-out "eagle-eye" "\
Decreases font-size in steps

\(fn)" t nil)

(autoload 'eagle-eye-zoom-in "eagle-eye" "\
Increases font-size in steps

\(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "eagle-eye" '("eagle-eye--")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; eagle-eye-autoloads.el ends here
