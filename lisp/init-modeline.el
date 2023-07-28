;; customize mode-line-format
(defun modeline-dir-abbrev ()
  (str-replace-all default-directory absolute-filename-subs))

(setq-default mode-line-format
              (list ""
                    'mode-line-modified
                    "%25b--"
                    " ["
                    '(:eval (modeline-dir-abbrev))
                    "] "
                    "%[("
                    'mode-name
                    "%n"
                    'mode-line-process
                    ")%]--"
                    "L%l--"
                    "C%c--"
                    '(-3 . "%P")
                    "-%-"))

                                        ;(setq sml/theme 'powerline)
                                        ;(sml/setup)


(provide 'init-modeline)
