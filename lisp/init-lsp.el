;; use lsp-mode for all languages:
(use-package lsp-mode
  :init
  (setq lsp-prefer-flymake nil)
  :demand t
  :after jmi-init-platform-paths)

(use-package lsp-ui
  :config
  (setq lsp-ui-doc-enable t
        lsp-ui-sideline-enable t
        lsp-ui-flycheck-enable t)
  :after lsp-mode)

(use-package lsp-treemacs
	:config
	(lsp-treemacs-sync-mode 1))

(use-package flycheck-inline
	:config
	(with-eval-after-load 'flycheck
		(add-hook 'flycheck-mode-hook #'flycheck-inline-mode)))

;(use-package flycheck-pos-tip
;	:config
;	(with-evel-after-load 'flycheck
;												(flycheck-pos-tip-mode)))
(provide 'init-lsp)
