;;; esh-buf-stack-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "esh-buf-stack" "esh-buf-stack.el" (0 0 0 0))
;;; Generated autoloads from esh-buf-stack.el

(autoload 'setup-eshell-buf-stack "esh-buf-stack" "\
Setup the buffer stack for Eshell.

\(fn)" t nil)

(autoload 'eshell-pop-stack "esh-buf-stack" "\
Pop a command from the buffer stack.

\(fn)" t nil)

(autoload 'eshell-push-command "esh-buf-stack" "\
Push CMD to the buffer stack.

\(fn CMD)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "esh-buf-stack" '("*eshell-buffer-stack*")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; esh-buf-stack-autoloads.el ends here
