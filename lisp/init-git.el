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
  (blamer-min-offset 50)
  :custom-face
  (blamer-face ((t :foreground "#7a88cf"
                    :background nil
                    :height 110
                    :italic t)))
  :config
  (global-blamer-mode 0))

(provide 'init-git)
