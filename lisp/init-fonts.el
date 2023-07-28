
;; Making unicode work
(use-package unicode-fonts
	:straight t)
(unicode-fonts-setup)
(when (member "DejaVu Sans Mono" (font-family-list))
  (set-face-attribute 'default nil :font "DejaVu Sans Mono-11"))

;; Use DejaVu Sans Mono as a fallback in fontset-startup
;; before resorting to fontset-default.
(set-fontset-font "fontset-startup" nil "DejaVu Sans Mono"
                  nil 'append)

;; Use MyPrivateFont for the Unicode private use area.
(set-fontset-font "fontset-default"  '(#xe000 . #xf8ff)
                  "DejaVu Sans Mono")

;; for reference this seems to be the good one:
;; -*-DejaVu Sans Mono-normal-normal-normal-*-11-*-*-*-m-0-iso10646-1

(provide 'init-fonts)
;; end init-fonts
