;;;;; ---------------------------------------------------
;; -----BEGIN ------- THIS SECTION WORKS GREAT FOR JAVA but Requires 11 --------------------
;; Java Setup
(require 'lsp-mode)

(use-package lsp-java
	:straight t)

(add-hook 'java-mode-hook #'lsp-deferred)

(use-package dap-mode
	:straight t
  :config
  (dap-mode t)
  (dap-ui-mode t))

;; ------------ END JAVA SETUP ----------------

(provide 'init-java)
