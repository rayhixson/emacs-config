;; Terraform
(use-package company)
(use-package company-terraform)
(defun my-terraform-mode-hook ()
  ;; Call terraform fmt before saving
  (add-hook 'before-save-hook 'terraform-format-buffer))
(add-hook 'terraform-mode-hook 'my-terraform-mode-hook)

(provide 'init-terraform)
