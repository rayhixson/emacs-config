(require 'lsp-mode)

(add-hook 'terraform-mode-hook #'lsp-deferred)

;; enables official Hashicorp language server
(setq lsp-disabled-clients '(tfls))

;; experimental feature to show references to functions
(setq lsp-terraform-ls-enable-show-reference t)

;; more token coloring for context
;(setq lsp-semantic-tokens-enable t)
;(setq lsp-semantic-tokens-honor-refresh-requests t)

;; this should be default, but it's for documentation
;; access with Alt-Return
(setq lsp-enable-links t)

;; experimental feature to enable auto-fill of required fields
(setq lsp-terraform-ls-prefill-required-fields t)


;; Terraform
;(use-package company
;	:straight t)
;(use-package company-terraform
;	:straight t)

(use-package terraform-mode
  :straight t

  ;; if using package.el
  ;; :ensure t
  :config
  (defun my-terraform-mode-init ()
    ;; if you want to use outline-minor-mode
    (outline-minor-mode 1)
    )

  (add-hook 'terraform-mode-hook 'my-terraform-mode-init))

(use-package hcl-mode
  :straight t)

;(require 'hcl-mode)

(defun my-terraform-mode-hook ()
  ;; Call terraform fmt before saving
  (add-hook 'before-save-hook 'terraform-format-buffer))
(add-hook 'terraform-mode-hook 'my-terraform-mode-hook)

(provide 'init-terraform)
