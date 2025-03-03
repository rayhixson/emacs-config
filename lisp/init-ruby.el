(require 'lsp-mode)
(add-hook 'ruby-mode-hook #'lsp-deferred)

;; (setq lsp-solargraph-use-bundler t) ;; Optional: If using `solargraph` too
(setq lsp-log-io nil) ;; Disable excessive logs

(lsp-register-client
 (make-lsp-client
  :new-connection (lsp-stdio-connection '("ruby-lsp"))
  :major-modes '(ruby-mode)
  :server-id 'ruby-lsp))

(use-package rspec-mode
	:straight t)

(provide 'init-ruby)
;;; init-ruby.el ends here
