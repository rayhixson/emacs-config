(use-package magit
  :config
;;  (remove-hook 'magit-refs-sections-hook 'magit-insert-tags)
;;  (remove-hook 'magit-status-sections-hook 'magit-insert-tags-header)
;;  (remove-hook 'magit-status-sections-hook 'magit-insert-status-headers)
;;  (remove-hook 'magit-status-sections-hook 'magit-insert-unpushed-to-pushremote)
;;  (remove-hook 'magit-status-sections-hook 'magit-insert-unpulled-from-pushremote)
;;  (remove-hook 'magit-status-sections-hook 'magit-insert-unpulled-from-upstream)
;;  (remove-hook 'magit-status-sections-hook 'magit-insert-unpushed-to-upstream-or-recent)
  :bind (
  ("C-x g" . magit-status)))

;; (setq magit-completing-read-function 'magit-ido-completing-read)

(use-package git-link)

(use-package blamer
  :straight (:host github :repo "artawower/blamer.el")
  :bind (("S-M-i" . blamer-show-commit-info))
  :custom
  (blamer-idle-time 0.3)
  (blamer-min-offset 50)
  :custom-face
  (blamer-face ((t :foreground "#7a88cf"
                   :background unspecified
                   :height 110
                   :italic t)))
  :config
  (global-blamer-mode 0))

(provide 'init-git)
