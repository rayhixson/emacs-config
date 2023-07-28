(use-package go-eldoc
	:ensure t)

(use-package company-go
	:config
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
	(add-hook 'go-mode-hook 'my-go-mode-hook))

;(; Customize compile command to run go build
(setq compile-command "/usr/local/go/bin/go install -v")


(provide 'init-go)
;;; init-go.el ends here
