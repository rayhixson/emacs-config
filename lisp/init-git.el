(use-package magit
  :bind (
  ("C-x g" . magit-status)))

;; (setq magit-completing-read-function 'magit-ido-completing-read)

(use-package git-link)

(use-package blamer
  :straight (:host github :repo "artawower/blamer.el")
  :bind (("s-i" . blamer-show-commit-info))
  :custom
  (blamer-idle-time 0.3)
  (blamer-min-offset 70)
  :custom-face
  (blamer-face ((t :foreground "#7a88cf"
                    :background nil
                    :height 140
                    :italic t)))
  :config
  (global-blamer-mode 1))

(provide 'init-git)
