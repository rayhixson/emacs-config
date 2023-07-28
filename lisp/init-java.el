;;;;; ---------------------------------------------------
;; -----BEGIN ------- THIS SECTION WORKS GREAT FOR JAVA but Requires 11 --------------------
;; Java Setup
(use-package lsp-java)

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

(use-package dap-mode
  :config
  (dap-mode t)
  (dap-ui-mode t))
(require 'lsp-java)
(add-hook 'java-mode-hook #'lsp)

;; ------------ END JAVA SETUP ----------------

(provide 'init-java)
