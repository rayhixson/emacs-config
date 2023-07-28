(use-package company
	:straight t
	:hook
	(company-mode . company-box-mode)
  :config
  ;(global-company-mode t)
	)

(use-package company-box
	:straight t)


(provide 'init-company)
;;; init-company.el ends here
