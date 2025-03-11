(require 'lsp-mode)

(add-hook 'go-mode-hook #'lsp-deferred)

;(use-package go-eldoc)

(use-package company-go
	:config
	;; (add-to-list 'auto-mode-alist '("\\.proto\\'" . go-mode))
	)

(defun my-go-mode-hook ()
	;; Set up before-save hooks to format buffer and add/delete imports.
	;; Make sure you don't have other gofmt/goimports hooks enabled.
  (add-hook 'before-save-hook #'lsp-format-buffer t t)
  (add-hook 'before-save-hook #'lsp-organize-imports t t)

	(set (make-local-variable 'company-backends) '(company-go))
	(company-mode)

	(setq tab-width 4)
	;; Use goimports instead of go-fmt
	;;(setq gofmt-command "goimports")

	;; Customize compile command to run go build
	(if (not (string-match "go" compile-command))
			(set (make-local-variable 'compile-command)
					 "go build -v && go test -v && go vet"))
					 ;;"go install -v"))
	)
;	(go-eldoc-setup))
(add-hook 'go-mode-hook 'my-go-mode-hook)


(setq lsp-gopls-use-placeholders nil)

;; experimental modes via lsp-register-custom-settings

(lsp-register-custom-settings
 '(("gopls.completeUnimported" t t)
   ("gopls.staticcheck" t t)))

(provide 'init-go)
;;; init-go.el ends here
