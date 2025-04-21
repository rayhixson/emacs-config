(use-package ruby-mode
  :mode "\\.rb\\'"
  :interpreter "ruby")

(use-package inf-ruby
  :hook (ruby-mode . inf-ruby-minor-mode))

(use-package ruby-electric
  :hook (ruby-mode . ruby-electric-mode))

(use-package projectile
  :config (projectile-mode +1))

(use-package projectile-rails
  :after projectile
  :hook (ruby-mode . projectile-rails-mode))

(use-package bundler)

(use-package rspec-mode
  :hook (ruby-mode . rspec-mode))

(use-package rubocop
  :hook (ruby-mode . rubocop-mode))

(use-package yard-mode
  :hook (ruby-mode . yard-mode))

;; (use-package company
;;   :ensure t
;;   :hook (ruby-mode . company-mode)
;;   :config
;;   (setq company-minimum-prefix-length 1
;;         company-idle-delay 0.2)) ;; Adjust for faster completion

(use-package robe
  :ensure t
  :hook (ruby-mode . robe-mode)
  :config
  (add-hook 'ruby-mode-hook 'robe-mode)
  (add-hook 'robe-mode-hook
            (lambda ()
              (company-mode 1)
              (push 'company-robe company-backends)))
  :bind (("M-." . robe-jump)))

(provide 'init-ruby)
