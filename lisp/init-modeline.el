;; customize mode-line-format

;; customize the modeline for different computers and projects
(defvar absolute-filename-subs
  '(("/Users/rhixson/" . "[~]")
		("/Users/rhixson/dev" . "[dev]")
    ("/Users/ray/" . "[~]")
		("/Users/ray/dev" . "[dev]")
    ("/$" . "")
    ("/Users/rhixson/dev/terraform/squads/" . "[squads]/")
    ("/Users/rhixson/dev/terraform/infra/" . "[infra]/")
    ("/Users/rhixson/dev/terraform/modules/" . "[modules]/")))

(defun modeline-dir-abbrev ()
  (str-replace-all default-directory absolute-filename-subs))

;; (use-package spacious-padding
;;   :straight t
;;   :hook (after-init . spacious-padding-mode)
;;   :custom
;;   ;; make the modeline look minimal
;;   (spacious-padding-subtle-mode-line '( :mode-line-active default
;;                                         :mode-line-inactive vertical-border)))

;; determine the focused window
(defvar cogent-line-selected-window (frame-selected-window))
(defun cogent-line-set-selected-window (&rest _args)
  (when (not (minibuffer-window-active-p (frame-selected-window)))
    (setq cogent-line-selected-window (frame-selected-window))
    (force-mode-line-update)))
(defun cogent-line-unset-selected-window ()
  (setq cogent-line-selected-window nil)
  (force-mode-line-update))
(defun cogent-line-selected-window-active-p ()
  (eq cogent-line-selected-window (selected-window)))

(add-hook 'window-configuration-change-hook #'cogent-line-set-selected-window)
(add-hook 'window-selection-change-functions #'cogent-line-set-selected-window)

;;---------------------
;;(set-face-attribute 'mode-line-inactive nil :foreground "#555" :background "#222"
;;                    :box '(:line-width 2 :color "#222"))

(setq rays/mode-line-sep (propertize " | " 'face '(:foreground "hot pink")))

(setq rays/mode-line-left-side '(""
                                 ;; indicate if the buffer has been modified
                                 (:eval (propertize (if (and (not buffer-read-only) (buffer-modified-p))
                                                         "● " "  " )
                                                     'face 'error))
                                 mode-line-buffer-identification
                                 ))

(setq rays/mode-line-padding
      '(:eval
        (propertize " " 'display
	                  `((space :align-to
			                       (- (+ right right-fringe right-margin)
			                          ,(string-width
                                  (format-mode-line rays/mode-line-right-side))))))))

(setq rays/mode-line-right-side '(:eval (when (mode-line-window-selected-p)
                                          (list
                                           "   ["
                                           '(:eval (modeline-dir-abbrev))
                                           "]"
                                           rays/mode-line-sep
;;                                           '(vc-mode vc-mode)
;;                                           rays/mode-line-sep
                                           "%[("
                                           'mode-name
                                           "%n"
                                           'mode-line-process
                                           ")%]"
                                           rays/mode-line-sep
                                           "L%l:"
                                           "C%c"
                                           rays/mode-line-sep
                                           '(-3 . "%P")
                                           "  "
                                           'mode-line-misc-info
                                           "-%-"
                                           ))))
(setq-default mode-line-format
              `(
                ,rays/mode-line-left-side
                ;; I still have yet to come up with a better option
                ;; ,rays/mode-line-padding
                ,rays/mode-line-right-side))




(provide 'init-modeline)
