;; IDO mode
(use-package ido)
(ido-mode t)

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
	:ensure t
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

(add-hook 'ibuffer-mode-hook
					(lambda ()
						(define-key ibuffer-mode-map "\C-x\C-f"
							'ibuffer-ido-find-file)
						(ibuffer-switch-to-saved-filter-groups "programming-mode")))

;;; Smex - enhances IDO - replaces M-x with better regex matching
(use-package smex)
(global-set-key (kbd "M-x") 'smex)

;; ido-better-flex: to have a 'better' fuzzy match algorithm for smex. Uninstall if not likey.
;https://github.com/vic/ido-better-flex
;;(use-package ido-better-flex

;; ido-ubiquitous: how is that showing up?
;(use-package ido-ubiquitous)

(provide 'init-ido)