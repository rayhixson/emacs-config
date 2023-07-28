(use-package magit
	:ensure t)

(bind-keys*
 ((kbd "C-x g") . magit-status))

(use-package git-link)

(provide 'init-git)
