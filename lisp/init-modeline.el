;; customize mode-line-format

(defvar absolute-filename-subs
  '(("/Users/rln692/" . "[~]")
		("/Users/rln692/dev" . "[dev]")
    ("/$" . "")
    ("/Users/rln692/dev/iam-control-allowances-test/" . "[shield]/")))

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
