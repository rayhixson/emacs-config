;; IDO mode
(use-package ido
	:straight t)
(ido-mode t)
(ido-everywhere t)

(use-package ido-completing-read+
	:straight t)
(ido-ubiquitous-mode 1)

(global-set-key
 "\M-x"
 (lambda ()
   (interactive)
   (call-interactively
    (intern

     (ido-completing-read
      "M-x "
      (all-completions "" obarray 'commandp))))))

(use-package ido-vertical-mode
	:straight t
	:config
	(ido-vertical-mode t)
	(setq ido-vertical-define-keys 'C-n-and-C-p-only))

;; Use ido to find files in ibuffer
(defun ibuffer-ido-find-file (file &optional wildcards)
	"Like `ido-find-file', but default to the directory of the buffer at point."
	(interactive
	 (let ((default-directory
					 (let ((buf (ibuffer-current-buffer)))
						 (if (buffer-live-p buf)
								 (with-current-buffer buf
									 default-directory)
							 default-directory))))
		 (list (ido-read-file-name "Find file: " default-directory) t)))
	(find-file file wildcards))

;;; Smex - enhances IDO - replaces M-x with better regex matching
(use-package smex
	:straight t)
(global-set-key (kbd "M-x") 'smex)

;; ido-better-flex: to have a 'better' fuzzy match algorithm for smex.
;; this enables find-file to match "init-misc.el" when you type "inmis"
(use-package ido-better-flex
	:straight (ido-better-flex :type git :host github :repo "vic/ido-better-flex"))

(use-package ido-completing-read+
	:straight t)

;; ido-ubiquitous: how is that showing up?
;(use-package ido-ubiquitous)

(provide 'init-ido)
