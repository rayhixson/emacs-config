(use-package magit
	:straight t)

(setq magit-completing-read-function 'magit-ido-completing-read)

(bind-keys*
 ((kbd "C-x g") . magit-status))

(use-package git-link
	:straight t)

(provide 'init-git)
