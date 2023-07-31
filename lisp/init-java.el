;;;;; ---------------------------------------------------
;; -----BEGIN ------- THIS SECTION WORKS GREAT FOR JAVA but Requires 11 --------------------
;; Java Setup
(require 'lsp-mode)

(use-package lsp-java
	:straight t)

(use-package lsp-ui
	:straight t
  :config
  (setq lsp-ui-doc-enable t
        lsp-ui-sideline-enable t
        lsp-ui-flycheck-enable t)
  :after lsp-mode)

(use-package dap-mode
	:straight t
  :config
  (dap-mode t)
  (dap-ui-mode t))
(require 'lsp-java)
(add-hook 'java-mode-hook #'lsp)

;; ------------ END JAVA SETUP ----------------

(provide 'init-java)
