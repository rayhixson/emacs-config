;;;;; ---------------------------------------------------
;; -----BEGIN ------- THIS SECTION WORKS GREAT FOR JAVA but Requires 11 --------------------
;; Java Setup
(require 'lsp-mode)

(use-package lsp-java)

(add-hook 'java-mode-hook #'lsp-deferred)

(use-package dap-mode
  :config
  (dap-mode t)
  (dap-ui-mode t))

;; ------------ END JAVA SETUP ----------------

(provide 'init-java)
