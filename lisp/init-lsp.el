;; use lsp-mode for all languages:
(use-package lsp-mode
	:straight t
  :init
  (setq lsp-prefer-flymake nil)
  :demand t
  :after jmi-init-platform-paths)

(use-package lsp-ui
	:straight t
  :config
  (setq lsp-ui-doc-enable t
        lsp-ui-sideline-enable t
        lsp-ui-flycheck-enable t)
  :after lsp-mode)

(use-package lsp-treemacs
	:straight t
	:config
	(lsp-treemacs-sync-mode 1))

(provide 'init-lsp)
