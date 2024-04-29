(use-package editorconfig
  :straight t)

(use-package jsonrpc
  :straight t)

(use-package copilot
  :straight (:host github :repo "copilot-emacs/copilot.el" :files ("*.el"))
  :ensure t
  :hook
  (add-hook 'prog-mode-hook 'copilot-mode))
;; you can utilize :map :hook and :config to customize copilot

(provide 'init-copilot)
