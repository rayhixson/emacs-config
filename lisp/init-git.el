(use-package magit
	:straight t)

(bind-keys*
 ((kbd "C-x g") . magit-status))

(use-package git-link
	:straight t)

(provide 'init-git)
