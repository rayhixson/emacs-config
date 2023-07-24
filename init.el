;; historically I liked: yoshi-theme and paganini-theme was what I was using???

;; this fixes:
;; error in process sentinel: Error retrieving: https://marmalade-repo.org/packages/archive-contents "incomprehensible buffer" [2 times]
(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/lisp/")

(require 'package)
(add-to-list
 'package-archives
 '("melpa" . "https://melpa.org/packages/") t)
(add-to-list
 'package-archives
 '("marmalade" . "https://marmalade-repo.org/packages/") t)

;; hl-line-mode - highlight the cursor line
                                        ;(global-hl-line-mode t)
                                        ;(set-face-foreground 'hl-line nil)
                                        ;(set-face-background 'hl-line "gray13")

                                        ;(require 'better-defaults)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-delay 1)
 '(blink-cursor-mode t)
 '(browse-at-remote-remote-type-regexps
   '(("^github\\.com$" . "github")
     ("^bitbucket\\.org$" . "bitbucket")
     ("^gitlab\\.com$" . "gitlab")
     ("^git\\.savannah\\.gnu\\.org$" . "gnu")
     ("^gist\\.github\\.com$" . "gist")
     ("^git\\.sr\\.ht$" . "sourcehut")
     ("^.*\\.visualstudio\\.com$" . "ado")
     ("^pagure\\.io$" . "pagure")
     ("^.*\\.fedoraproject\\.org$" . "pagure")
     ("^.*\\.googlesource\\.com$" . "gitiles")
     ("^github\\.globalpay\\.com$" . "github")
     ("^bit\\.xenial\\.com$" . "bitbucket")))
 '(cgs-find-project-functions '(cgs-root))
 '(column-number-mode nil)
 '(compilation-message-face 'default)
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#839496")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(cursor-type 'box)
 '(custom-enabled-themes '(wheatgrass))
 '(custom-safe-themes
   '("8d412c0ed46b865312d6df5c1dfd1821d349dd3cba00049cf88c4ad34403597e" "833ddce3314a4e28411edf3c6efde468f6f2616fc31e17a62587d6a9255f4633" "d89e15a34261019eec9072575d8a924185c27d3da64899905f8548cbd9491a36" "fee7287586b17efbfda432f05539b58e86e059e78006ce9237b8732fde991b4c" "d537a9d42c6f5349d1716ae9be9a0645cc168f7aff2a8353819d570e5d02c0b3" "3e200d49451ec4b8baa068c989e7fba2a97646091fd555eca0ee5a1386d56077" "51ec7bfa54adf5fff5d466248ea6431097f5a18224788d0bd7eb1257a4f7b773" "12ce08742ff8678a6c716f3dcafff508c5df6a408eb91b5c0a04a9cb9671dde3" "62b5c93e1dab499efc36ed0a1955d21d859efd8582da7bacc74a8f95a86f6c41" "0fffa9669425ff140ff2ae8568c7719705ef33b7a927a0ba7c5e2ffcfac09b75" "830877f4aab227556548dc0a28bf395d0abe0e3a0ab95455731c9ea5ab5fe4e1" "7f1d414afda803f3244c6fb4c2c64bea44dac040ed3731ec9d75275b9e831fe5" "c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "b9e9ba5aeedcc5ba8be99f1cc9301f6679912910ff92fdf7980929c2fc83ab4d" "84d2f9eeb3f82d619ca4bfffe5f157282f4779732f48a5ac1484d94d5ff5b279" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "c221703cc604312f6f72349704f7329f80ccc6a261af769332ec80171b728cc0" "e61752b5a3af12be08e99d076aedadd76052137560b7e684a8be2f8d2958edc3" "ae65ccecdcc9eb29ec29172e1bfb6cadbe68108e1c0334f3ae52414097c501d2" "1a5e62d03a1c0c0c1ff46e00acf9d3d42be0f43481f01faef752b5d309d82080" "2809bcb77ad21312897b541134981282dc455ccd7c14d74cc333b6e549b824f3" "4318c8136e18752719d5df209ec2576f0559dd02b9bef6be334c2e6aff57a1e4" "1e67765ecb4e53df20a96fb708a8601f6d7c8f02edb09d16c838e465ebe7f51b" "6c7db7fdf356cf6bde4236248b17b129624d397a8e662cf1264e41dab87a4a9a" "26d49386a2036df7ccbe802a06a759031e4455f07bda559dcf221f53e8850e69" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default))
 '(describe-char-unidata-list
   '(name old-name general-category decomposition decimal-digit-value digit-value numeric-value mirrored iso-10646-comment))
 '(egg-enable-tooltip t)
 '(erc-modules
   '(autojoin button completion fill irccontrols list match menu move-to-prompt netsplit networks noncommands notifications readonly ring stamp track))
 '(erc-nick "raydondo")
 '(fci-rule-color "#073642")
 '(flycheck-posframe-border-width 5)
 '(frame-background-mode 'dark)
 '(global-font-lock-mode t)
 '(hydra-posframe-show-params
   '(:poshandler posframe-poshandler-frame-bottom-center :internal-border-width 15 :internal-border-color "#222222" :background-color "#222222") t)
 '(indent-tabs-mode nil)
 '(ivy-posframe-border-width 15)
 '(ivy-posframe-style 'frame-bottom-window-center)
 '(js-indent-level 2)
 '(large-file-warning-threshold nil)
 '(lsp-keymap-prefix "M-l")
 '(magit-stash-arguments nil)
 '(markdown-command "/usr/local/bin/Markdown.pl")
 '(org-fontify-whole-heading-line t)
 '(org-startup-truncated nil)
 '(package-selected-packages
   '(icomplete-vertical ido-ubiquitous ido-at-point ido-better-flex ido-vertical-mode fish-mode projectile all-the-icons-completion lsp-treemacs treemacs treemacs-all-the-icons treemacs-icons-dired treemacs-magit treemacs-tab-bar nginx-mode direx rcirc-notify circe go-errcheck go-rename go-gen-test go-imenu go-impl go-mode sly go-eldoc go-guru which-key magit-gh-pulls magit-gitflow exec-path-from-shell git-link browse-at-remote groovy-mode protobuf-mode all-the-icons-ibuffer powerline eshell-git-prompt eshell-prompt-extras fuzzy fuzzy-match fzf esh-autosuggest esh-buf-stack esh-help eshell-autojump eshell-fringe-status eshell-toggle fish-completion load-bash-alias starter-kit-eshell smart-mode-line smart-mode-line-powerline-theme unicode-fonts groovy-imports gradle-mode terraform-doc terraform-mode let-alist restclient-helm rjsx-mode sql-indent db-pg docker hcl-mode window-purpose swiper all-the-icons-dired all-the-icons magit-filenotify magit-find-file magithub use-package enh-ruby-mode magit paganini-theme yoshi-theme eagle-eye lexbind-mode browse-kill-ring feature-mode dumb-jump smex ag flycheck-yamllint yaml-mode))
 '(rcirc-authinfo '(("libera.chat" nickserv "raydondo" "Lr#4CmIZg#hbDaj@")))
 '(rcirc-default-nick "raydondo")
 '(rcirc-default-user-name "raydondo")
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#073642" 0.2))
 '(sml/mode-width (if (eq (powerline-current-separator) 'arrow) 'right 'full))
 '(sml/pos-id-separator
   '(""
     (:propertize " " face powerline-active1)
     (:eval
      (propertize " " 'display
                  (funcall
                   (intern
                    (format "powerline-%s-%s"
                            (powerline-current-separator)
                            (car powerline-default-separator-dir)))
                   'powerline-active1 'powerline-active2)))
     (:propertize " " face powerline-active2)))
 '(sml/pos-minor-modes-separator
   '(""
     (:propertize " " face powerline-active1)
     (:eval
      (propertize " " 'display
                  (funcall
                   (intern
                    (format "powerline-%s-%s"
                            (powerline-current-separator)
                            (cdr powerline-default-separator-dir)))
                   'powerline-active1 'sml/global)))
     (:propertize " " face sml/global)))
 '(sml/pre-id-separator
   '(""
     (:propertize " " face sml/global)
     (:eval
      (propertize " " 'display
                  (funcall
                   (intern
                    (format "powerline-%s-%s"
                            (powerline-current-separator)
                            (car powerline-default-separator-dir)))
                   'sml/global 'powerline-active1)))
     (:propertize " " face powerline-active1)))
 '(sml/pre-minor-modes-separator
   '(""
     (:propertize " " face powerline-active2)
     (:eval
      (propertize " " 'display
                  (funcall
                   (intern
                    (format "powerline-%s-%s"
                            (powerline-current-separator)
                            (cdr powerline-default-separator-dir)))
                   'powerline-active2 'powerline-active1)))
     (:propertize " " face powerline-active1)))
 '(sml/pre-modes-separator (propertize " " 'face 'sml/modes))
 '(solarized-contrast 'normal)
 '(split-height-threshold 100)
 '(sql-mode-hook '(sqlind-minor-mode))
 '(sublimity-mode t)
 '(tab-always-indent 'complete)
 '(tool-bar-mode nil)
 '(unicode-fonts-block-font-mapping
   '(("Aegean Numbers"
      ("Noto Sans Symbols" "Aegean" "Symbola" "Quivira" "Code2001" "Everson Mono:weight=bold" "ALPHABETUM Unicode"))
     ("Ahom"
      ("AhomUnicode"))
     ("Alchemical Symbols"
      ("Noto Sans Symbols" "Symbola" "Quivira" "Everson Mono:weight=bold"))
     ("Alphabetic Presentation Forms"
      ("DejaVu Sans:width=condensed" "Arial Unicode MS" "Cardo" "Code2000" "Quivira" "Everson Mono:weight=bold" "FreeMono" "ALPHABETUM Unicode"))
     ("Anatolian Hieroglyphs"
      ("Anatolian"))
     ("Ancient Greek Musical Notation"
      ("Cardo" "Noto Sans Symbols" "Aegean" "New Athena Unicode" "Musica" "Symbola" "Quivira" "Everson Mono:weight=bold" "ALPHABETUM Unicode"))
     ("Ancient Greek Numbers"
      ("Noto Sans Symbols" "Apple Symbols" "New Athena Unicode" "Cardo" "Aegean" "Quivira" "Symbola" "Everson Mono:weight=bold" "ALPHABETUM Unicode"))
     ("Ancient Symbols"
      ("Noto Sans Symbols" "Analecta" "New Athena Unicode" "Cardo" "Aegean" "Quivira" "Symbola" "Everson Mono:weight=bold" "ALPHABETUM Unicode"))
     ("Arabic"
      ("Courier New" "Simplified Arabic Fixed" "Simplified Arabic" "Amiri" "Aldhabi" "Adobe Arabic" "Urdu Typesetting" "Geeza Pro" "Baghdad" "Damascus" "Al Bayan" "Andalus" "Arabic Typesetting" "Traditional Arabic" "Scheherazade" "DejaVu Sans Mono" "DejaVu Sans:width=condensed" "Arial Unicode MS" "Nadeem" "Microsoft Uighur" "Tahoma" "Microsoft Sans Serif" "MPH 2B Damase" "KufiStandardGK" "DecoType Naskh" "Koodak" "FreeMono" "Code2000"))
     ("Arabic Extended-A"
      ("Scheherazade" "Amiri"))
     ("Arabic Mathematical Alphabetic Symbols"
      ("Amiri"))
     ("Arabic Presentation Forms-A"
      ("Geeza Pro" "Amiri" "Arial Unicode MS" "Microsoft Sans Serif" "Tahoma" "KufiStandardGK" "Andalus" "Arabic Typesetting" "Urdu Typesetting" "Adobe Arabic" "DecoType Naskh" "Al Bayan" "DejaVu Sans Mono" "DejaVu Sans:width=condensed" "MPH 2B Damase" "Code2000"))
     ("Arabic Presentation Forms-B"
      ("DejaVu Sans Mono" "Geeza Pro" "Amiri" "Adobe Arabic" "Traditional Arabic" "Urdu Typesetting" "Arial Unicode MS" "Microsoft Sans Serif" "KufiStandardGK" "DejaVu Sans:width=condensed" "FreeMono" "DecoType Naskh" "Code2000"))
     ("Arabic Supplement"
      ("Courier New" "Simplified Arabic Fixed" "Amiri" "Simplified Arabic" "Geeza Pro" "Damascus" "Andalus" "Arabic Typesetting" "Traditional Arabic" "Scheherazade" "Adobe Arabic" "Microsoft Uighur" "Tahoma" "Microsoft Sans Serif" "MPH 2B Damase"))
     ("Armenian"
      ("DejaVu Sans Mono" "Noto Sans Armenian" "Mshtakan" "Sylfaen" "DejaVu Sans:width=condensed" "Quivira" "MPH 2B Damase" "Code2000" "Arial Unicode MS" "Everson Mono:weight=bold" "FreeMono"))
     ("Arrows"
      ("DejaVu Sans Mono" "Apple Symbols" "Cambria Math" "Segoe UI Symbol" "DejaVu Sans:width=condensed" "Asana Math" "Arial Unicode MS" "BabelStone Modern" "Symbola" "Quivira" "Code2000" "Noto Sans Symbols" "Everson Mono:weight=bold" "FreeMono"))
     ("Avestan"
      ("Noto Sans Avestan" "Ahuramzda:weight=bold" "ALPHABETUM Unicode"))
     ("Balinese"
      ("Noto Sans Balinese:weight=bold" "Aksara Bali"))
     ("Bamum"
      ("Noto Sans Bamum"))
     ("Bamum Supplement"
      ("Noto Sans Bamum"))
     ("Batak"
      ("Batak-Unicode" "Noto Sans Batak"))
     ("Bengali"
      ("Bangla Sangam MN" "Noto Sans Bengali" "Noto Sans Bengali UI" "Nirmala UI" "Vrinda" "Mukti Narrow" "Akaash" "Arial Unicode MS" "Code2000" "ALPHABETUM Unicode"))
     ("Block Elements"
      ("DejaVu Sans Mono" "Noto Sans Symbols" "FreeMono" "DejaVu Sans:width=condensed" "Apple Symbols" "Segoe UI Symbol" "BabelStone Modern" "Symbola" "Quivira" "Code2000" "Everson Mono:weight=bold"))
     ("Bopomofo"
      ("Lantinghei TC" "MingLiU" "SimHei" "LiSong Pro" "FangSong" "SimSun" "DFKai-SB" "WenQuanYi Zen Hei Mono" "Microsoft JhengHei" "Microsoft JhengHei UI" "Microsoft YaHei" "Microsoft YaHei UI" "Lantinghei SC" "HAN NOM A" "Arial Unicode MS" "BabelStone Han" "Code2000" "ALPHABETUM Unicode"))
     ("Bopomofo Extended"
      ("MingLiU" "SimHei" "FangSong" "SimSun" "DFKai-SB" "Microsoft JhengHei" "Microsoft JhengHei UI" "Microsoft YaHei" "Microsoft YaHei UI" "BabelStone Han" "Code2000"))
     ("Box Drawing"
      ("DejaVu Sans Mono" "FreeMono" "DejaVu Sans" "Everson Mono" "Quivira" "Code2000" "Noto Sans Symbols" "Segoe UI Symbol" "Symbola"))
     ("Brahmi"
      ("Segoe UI Historic" "Noto Sans Brahmi" "Adinatha Tamil Brahmi" "ALPHABETUM Unicode"))
     ("Braille Patterns"
      ("Quivira" "Apple Braille" "DejaVu Sans:width=condensed" "Apple Symbols" "Segoe UI Symbol" "Symbola" "Noto Sans Symbols" "FreeMono" "Code2000" "Everson Mono:weight=bold"))
     ("Buginese"
      ("Noto Sans Buginese" "MPH 2B Damase" "Monlam Uni Sans Serif" "Code2000"))
     ("Buhid"
      ("Noto Sans Buhid" "Quivira" "Code2000"))
     ("Byzantine Musical Symbols"
      ("Noto Sans Symbols" "Musica" "Symbola" "FreeSerif"))
     ("Carian"
      ("Segoe UI Historic" "Noto Sans Carian" "Aegean" "Quivira" "Everson Mono:weight=bold" "ALPHABETUM Unicode"))
     ("Chakma"
      ("Ribeng"))
     ("Cham"
      ("Noto Sans Cham" "Cham OI_Tangin" "Cham OI_Kulbleng" "Cham OI_Kul" "Code2000"))
     ("Cherokee"
      ("Aboriginal Sans" "Aboriginal Serif" "Plantagenet Cherokee" "Noto Sans Cherokee" "Gadugi" "MPH 2B Damase" "Quivira" "Everson Mono:weight=bold" "FreeMono" "Code2000"))
     ("Cherokee Supplement"
      ("Everson Mono:weight=bold"))
     ("CJK Compatibility"
      ("SimHei" "FangSong" "SimSun" "MingLiU" "Meiryo" "Microsoft JhengHei" "Microsoft JhengHei UI" "Lantinghei SC" "Lantinghei TC" "HAN NOM A" "Arial Unicode MS" "WenQuanYi Zen Hei Mono" "HanaMinA" "BabelStone Han" "Code2000"))
     ("CJK Compatibility Forms"
      ("WenQuanYi Zen Hei Mono" "Lantinghei SC" "SimHei" "FangSong" "SimSun" "LiSong Pro" "Baoli SC" "Microsoft YaHei" "Microsoft YaHei UI" "Lantinghei TC" "BabelStone Han" "MingLiU" "Microsoft JhengHei" "Microsoft JhengHei UI" "HAN NOM A" "Symbola" "Xingkai SC" "DFKai-SB" "Code2000"))
     ("CJK Compatibility Ideographs"
      ("SimHei" "FangSong" "SimSun" "Microsoft YaHei" "Microsoft YaHei UI" "WenQuanYi Zen Hei Mono" "BabelStone Han" "UnBatang" "MingLiU" "Microsoft JhengHei" "Microsoft JhengHei UI" "HAN NOM A" "Arial Unicode MS" "Lantinghei SC" "HanaMinA"))
     ("CJK Compatibility Ideographs Supplement"
      ("WenQuanYi Zen Hei Mono" "SimHei" "FangSong" "SimSun" "MingLiU" "HanaMinA" "Hiragino Kaku Gothic Pro" "Hiragino Maru Gothic Pro" "Hiragino Mincho Pro" "Microsoft JhengHei" "Microsoft JhengHei UI" "HAN NOM B" "LiSong Pro"))
     ("CJK Radicals Supplement"
      ("WenQuanYi Zen Hei Mono" "SimHei" "FangSong" "SimSun" "Microsoft YaHei" "Microsoft YaHei UI" "HanaMinA" "BabelStone Han" "MingLiU" "Microsoft JhengHei" "Microsoft JhengHei UI" "HAN NOM A" "DFKai-SB" "Apple Symbols" "Code2000"))
     ("CJK Strokes"
      ("WenQuanYi Zen Hei Mono" "HanaMinA" "BabelStone Han" "Code2000"))
     ("CJK Symbols and Punctuation"
      ("Lantinghei SC" "SimHei" "FangSong" "SimSun" "HanaMinA" "WenQuanYi Zen Hei Mono" "LiSong Pro" "STFangsong" "Microsoft YaHei" "Microsoft YaHei UI" "Lantinghei TC" "MingLiU" "HAN NOM A" "Arial Unicode MS" "PCMyungjo" "BabelStone Han" "Osaka:spacing=m" "Code2000"))
     ("CJK Unified Ideographs"
      ("WenQuanYi Zen Hei Mono" "Lantinghei SC" "Songti SC" "SimHei" "FangSong" "STFangsong" "SimSun" "LiSong Pro" "Baoli SC" "HanaMinA" "BabelStone Han" "Apple LiGothic" "Lantinghei TC" "MingLiU" "Microsoft JhengHei" "Microsoft JhengHei UI" "HAN NOM A" "DFKai-SB" "Arial Unicode MS" "Xingkai SC" "GB18030 Bitmap" "UnBatang"))
     ("CJK Unified Ideographs Extension A"
      ("SimHei" "FangSong" "STFangsong" "SimSun" "Songti SC" "Microsoft YaHei" "Microsoft YaHei UI" "MingLiU" "Microsoft JhengHei" "Microsoft JhengHei UI" "HanaMinA" "HAN NOM A" "Code2000" "DFKai-SB" "BabelStone Han" "GB18030 Bitmap"))
     ("CJK Unified Ideographs Extension B"
      ("SimHei" "FangSong" "SimSun" "LiSong Pro" "Microsoft YaHei" "Microsoft YaHei UI" "HanaMinB" "HAN NOM B" "Code2002" "MingLiU" "Microsoft JhengHei" "Microsoft JhengHei UI" "BabelStone Han" "DFKai-SB"))
     ("CJK Unified Ideographs Extension C"
      ("HanaMinB" "BabelStone Han" "HAN NOM B"))
     ("CJK Unified Ideographs Extension D"
      ("HanaMinB" "BabelStone Han"))
     ("CJK Unified Ideographs Extension E"
      ("HanaMinB" "BabelStone Han"))
     ("Combining Diacritical Marks"
      ("Monaco" "Consolas" "Noto Sans" "Cambria Math" "Charis SIL" "Doulos SIL" "Courier New" "DejaVu Sans:width=condensed" "DejaVu Sans Mono" "Cardo" "Code2000" "Gentium Plus" "Junicode" "Tahoma" "Microsoft Sans Serif" "Arial" "Quivira" "Symbola" "Everson Mono" "FreeMono" "Arial Unicode MS" "ALPHABETUM Unicode"))
     ("Combining Diacritical Marks Extended"
      ("Monlam Uni Sans Serif"))
     ("Combining Diacritical Marks Supplement"
      ("Cardo" "FreeSerif" "Junicode" "Doulos SIL" "DejaVu Sans:width=condensed" "Noto Sans" "Segoe UI" "Code2000" "Everson Mono" "ALPHABETUM Unicode"))
     ("Combining Diacritical Marks for Symbols"
      ("Cambria Math" "Segoe UI Symbol" "Noto Sans Symbols" "Symbola" "Code2000" "Everson Mono" "Arial Unicode MS"))
     ("Combining Half Marks"
      ("Consolas" "DejaVu Sans:width=condensed" "Everson Mono:weight=bold" "Symbola"))
     ("Common Indic Number Forms"
      ("Noto Sans Kaithi" "Nirmala UI" "Siddhanta"))
     ("Control Pictures"
      ("Apple Symbols" "BabelStone Modern" "Noto Sans Symbols" "Segoe UI Symbol" "Arial Unicode MS" "Symbola" "Quivira" "FreeMono" "Code2000" "Everson Mono:weight=bold"))
     ("Coptic"
      ("Noto Sans Coptic" "Antinoou" "New Athena Unicode" "Segoe UI Historic" "Segoe UI Symbol" "Quivira" "Analecta" "Nilus" "Code2000" "Everson Mono:weight=bold" "ALPHABETUM Unicode"))
     ("Coptic Epact Numbers"
      ("Nilus" "Symbola"))
     ("Counting Rod Numerals"
      ("WenQuanYi Zen Hei Mono" "Noto Sans Symbols" "BabelStone Modern" "Symbola" "Quivira" "Apple Symbols" "Code2001"))
     ("Cuneiform"
      ("Segoe UI Historic" "Noto Sans Cuneiform" "Noto Sans Sumero-Akkadian Cuneiform" "Akkadian"))
     ("Cuneiform Numbers and Punctuation"
      ("Akkadian" "Segoe UI Historic" "Noto Sans Cuneiform" "Noto Sans Sumero-Akkadian Cuneiform"))
     ("Currency Symbols"
      ("Monaco" "DejaVu Sans Mono" "DejaVu Sans:width=condensed" "Consolas" "Noto Sans Symbols" "Noto Sans" "Segoe UI" "Apple Symbols" "Symbola" "Quivira" "Everson Mono:weight=bold" "FreeMono"))
     ("Cypriot Syllabary"
      ("Segoe UI Historic" "Noto Sans Cypriot" "Aegean" "Code2001" "Everson Mono:weight=bold" "ALPHABETUM Unicode"))
     ("Cyrillic"
      ("Consolas" "Monaco" "DejaVu Sans Mono" "DejaVu Sans:width=condensed" "Noto Sans" "Courier New" "Calibri" "Microsoft Sans Serif" "Code2000" "Arial Unicode MS" "Charis SIL" "Doulos SIL" "Symbola" "Quivira" "Everson Mono:weight=bold" "FreeMono" "Charcoal CY" "Geneva CY" "ALPHABETUM Unicode"))
     ("Cyrillic Extended-A"
      ("Quivira" "Everson Mono:weight=bold" "FreeSerif" "ALPHABETUM Unicode"))
     ("Cyrillic Extended-B"
      ("Quivira" "Code2000" "Everson Mono:weight=bold"))
     ("Cyrillic Supplement"
      ("Consolas" "Courier New" "Calibri" "Noto Sans" "DejaVu Sans:width=condensed" "Charis SIL" "Doulos SIL" "Symbola" "Quivira" "Code2000" "Everson Mono:weight=bold"))
     ("Deseret"
      ("Noto Sans Deseret" "Apple Symbols" "Segoe UI Symbol" "Analecta" "Code2001" "Everson Mono:weight=bold"))
     ("Devanagari"
      ("Annapurna SIL" "Noto Sans Devanagari" "Devanagari Sangam MN" "Devanagari MT" "Nirmala UI" "Mangal" "Samyak Devanagari" "Samyak" "Siddhanta" "Aparajita" "Code2000" "Arial Unicode MS" "ALPHABETUM Unicode"))
     ("Devanagari Extended"
      ("Annapurna SIL" "Siddhanta" "FreeSerif"))
     ("Dingbats"
      ("Apple Color Emoji" "DejaVu Sans Mono" "Segoe UI Symbol" "Zapf Dingbats" "DejaVu Sans:width=condensed" "Arial Unicode MS" "Code2000" "Noto Sans Symbols" "Symbola" "Quivira" "Everson Mono:weight=bold"))
     ("Domino Tiles"
      ("DejaVu Sans:width=condensed" "Symbola" "Quivira" "Segoe UI Symbol" "Noto Sans Symbols" "Code2001" "Everson Mono:weight=bold"))
     ("Early Dynastic Cuneiform"
      ("Akkadian"))
     ("Egyptian Hieroglyphs"
      ("Segoe UI Historic:weight=bold" "Noto Sans Egyptian Hieroglyphs:weight=bold" "Aegyptus:weight=bold" "Gardiner"))
     ("Elbasan"
      ("Albanian" "Everson Mono:weight=bold"))
     ("Emoticons"
      ("Apple Color Emoji" "Segoe UI Symbol" "Symbola" "Quivira"))
     ("Enclosed Alphanumeric Supplement"
      ("Segoe UI Symbol" "Noto Sans Symbols" "Symbola" "Quivira" "BabelStone Han" "BabelStone Modern"))
     ("Enclosed Alphanumerics"
      ("Noto Sans Symbols" "Segoe UI Symbol" "Junicode" "Arial Unicode MS" "Symbola" "Quivira" "Code2000" "BabelStone Han" "WenQuanYi Zen Hei Mono" "BabelStone Modern" "HAN NOM A" "Everson Mono:weight=bold"))
     ("Enclosed CJK Letters and Months"
      ("WenQuanYi Zen Hei Mono" "SimHei" "FangSong" "MingLiU" "Arial Unicode MS" "HanaMinA" "Meiryo" "BabelStone Han" "Quivira" "Code2000" "UnBatang" "HAN NOM A"))
     ("Enclosed Ideographic Supplement"
      ("Segoe UI Symbol" "Noto Sans Symbols" "HanaMinA" "BabelStone Han" "Symbola"))
     ("Ethiopic"
      ("Kefa" "Noto Sans Ethiopic" "Nyala" "Abyssinica SIL" "Ethiopia Jiret" "Ethiopic WashRa SemiBold" "Ethiopic Yebse" "Code2000"))
     ("Ethiopic Extended"
      ("Kefa" "Noto Sans Ethiopic" "Nyala" "Abyssinica SIL" "Code2000"))
     ("Ethiopic Extended-A"
      ("Kefa" "Noto Sans Ethiopic" "Abyssinica SIL"))
     ("Ethiopic Supplement"
      ("Kefa" "Noto Sans Ethiopic" "Nyala" "Abyssinica SIL" "Code2000"))
     ("General Punctuation"
      ("Monaco" "Apple Symbols" "Segoe UI Symbol" "Cambria Math" "DejaVu Sans Mono" "DejaVu Sans:width=condensed" "Charis SIL" "Doulos SIL" "Antinoou" "Symbola" "Code2000" "Quivira" "Noto Sans" "Everson Mono:weight=bold" "FreeMono" "BabelStone Modern"))
     ("Geometric Shapes"
      ("DejaVu Sans Mono" "DejaVu Sans:width=condensed" "Segoe UI Symbol" "Arial Unicode MS" "Symbola" "Noto Sans Symbols" "Quivira" "BabelStone Modern" "Everson Mono" "FreeMono" "Code2000"))
     ("Geometric Shapes Extended"
      ("Symbola" "Quivira"))
     ("Georgian"
      ("DejaVu Sans Mono" "Noto Sans Georgian" "Noto Serif Georgian" "DejaVu Sans:width=condensed" "Arial Unicode MS" "Code2000" "Quivira" "Sylfaen" "MPH 2B Damase" "Everson Mono:weight=bold"))
     ("Georgian Supplement"
      ("Noto Sans Georgian" "Noto Serif Georgian" "DejaVu Serif:width=condensed" "MPH 2B Damase" "Quivira" "Everson Mono:weight=bold"))
     ("Glagolitic"
      ("Noto Sans Glagolitic" "Segoe UI Historic" "Segoe UI Symbol" "MPH 2B Damase" "Quivira" "FreeSerif" "ALPHABETUM Unicode"))
     ("Gothic"
      ("Noto Sans Gothic" "Segoe UI Historic" "Segoe UI Symbol" "Analecta" "Junicode" "Sadagolthina" "MPH 2B Damase" "FreeSerif" "Code2001" "Quivira" "Everson Mono:weight=bold" "ALPHABETUM Unicode"))
     ("Greek Extended"
      ("Consolas" "DejaVu Sans Mono" "Courier New" "Antinoou" "Noto Sans" "DejaVu Sans:width=condensed" "Cardo" "Junicode" "New Athena Unicode" "Microsoft Sans Serif" "Gentium Plus Compact" "Gentium Plus" "Arial Unicode MS" "Arial" "Tahoma" "Aegean" "Code2000" "Quivira" "Everson Mono:weight=bold" "FreeMono" "ALPHABETUM Unicode"))
     ("Greek and Coptic"
      ("Consolas" "DejaVu Sans Mono" "DejaVu Sans:width=condensed" "Antinoou" "Noto Sans" "Segoe UI Historic" "Segoe UI Symbol" "New Athena Unicode" "Calibri" "Microsoft Sans Serif" "Gentium Plus Compact" "Gentium Plus" "Lucida Console" "Arial Unicode MS" "Cardo" "Aegean" "Code2000" "Symbola" "Quivira" "Everson Mono:weight=bold" "ALPHABETUM Unicode" "Noto Sans Coptic"))
     ("Gujarati"
      ("Nirmala UI" "Noto Sans Gujarati" "Noto Sans Gujarati UI" "Gujarati MT" "Shruti" "Samyak Gujarati" "Samyak" "Gujarati Sangam MN" "Code2000" "Arial Unicode MS"))
     ("Gurmukhi"
      ("Gurmukhi Sangam MN" "Gurmukhi MN" "Nirmala UI" "Noto Sans Gurmukhi" "Noto Sans Gurmukhi UI" "Raavi" "Code2000" "Arial Unicode MS" "AnmolUni"))
     ("Halfwidth and Fullwidth Forms"
      ("Meiryo" "Arial Unicode MS" "Microsoft JhengHei" "Microsoft JhengHei UI" "Microsoft YaHei" "Microsoft YaHei UI" "BabelStone Han" "Apple Symbols" "Quivira" "Code2000" "HAN NOM A"))
     ("Hangul Compatibility Jamo"
      ("PCMyungjo" "Malgun Gothic" "Gulim" "Dotum" "Batang" "Gungsuh" "AppleMyungjo" "UnBatang" "WenQuanYi Zen Hei Mono" "HAN NOM A" "Arial Unicode MS" "Code2000" "HeadLineA"))
     ("Hangul Jamo"
      ("UnBatang" "WenQuanYi Zen Hei Mono" "PCMyungjo" "Malgun Gothic" "Gulim" "Dotum" "Batang" "Gungsuh" "Arial Unicode MS" "Code2000"))
     ("Hangul Jamo Extended-A"
      ("Malgun Gothic" "HanaMinA" "UnBatang"))
     ("Hangul Jamo Extended-B"
      ("Malgun Gothic" "HanaMinA" "UnBatang"))
     ("Hangul Syllables"
      ("AppleGothic" "Malgun Gothic" "Gulim" "Dotum" "Batang" "Gungsuh" "UnBatang" "WenQuanYi Zen Hei Mono" "Arial Unicode MS" "Code2000"))
     ("Hanunoo"
      ("Noto Sans Hanunoo" "MPH 2B Damase" "Quivira" "FreeSerif"))
     ("Hebrew"
      ("Miriam Fixed" "Ezra SIL" "Ezra SIL SR" "Arial Hebrew" "Raanana" "New Peninim MT" "Aharoni" "David" "FrankRuehl" "Gisha" "Levenim MT" "Narkisim" "Rod" "Cardo" "Courier New" "Adobe Hebrew" "Code2000" "Aramaic Imperial Yeb" "Microsoft Sans Serif" "Tahoma" "Lucida Sans Unicode" "Arial Unicode MS" "Arial" "Quivira" "Everson Mono:weight=bold" "ALPHABETUM Unicode"))
     ("Hiragana"
      ("Osaka:spacing=m" "MS Gothic" "MS Mincho" "MingLiU" "Hiragino Kaku Gothic Pro" "Meiryo" "Arial Unicode MS" "HanaMinA" "BabelStone Han" "Microsoft JhengHei" "Microsoft YaHei" "Microsoft YaHei UI" "HAN NOM A" "Code2000" "ALPHABETUM Unicode"))
     ("Ideographic Description Characters"
      ("SimHei" "FangSong" "SimSun" "Microsoft YaHei" "Microsoft YaHei UI" "BabelStone Han" "MingLiU" "Microsoft JhengHei" "Microsoft JhengHei UI" "AppleMyungjo" "HanaMinA" "HAN NOM A" "Quivira" "DFKai-SB" "Code2000"))
     ("Imperial Aramaic"
      ("Aramaic Imperial Yeb" "Quivira" "Segoe UI Historic" "Noto Sans Imperial Aramaic" "Everson Mono:weight=bold" "ALPHABETUM Unicode"))
     ("Inscriptional Pahlavi"
      ("ZH Mono" "Segoe UI Historic" "Noto Sans Inscriptional Pahlavi" "ALPHABETUM Unicode" "Ahuramzda:weight=bold"))
     ("Inscriptional Parthian"
      ("ZH Mono" "Segoe UI Historic" "Noto Sans Inscriptional Parthian" "ALPHABETUM Unicode"))
     ("IPA Extensions"
      ("Monaco" "Consolas" "DejaVu Sans Mono" "Courier New" "Noto Sans" "Arial Unicode MS" "Arial" "Tahoma" "Microsoft Sans Serif" "Aboriginal Sans" "Cardo" "Symbola" "Quivira" "Everson Mono:weight=bold" "FreeMono" "Code2000" "ALPHABETUM Unicode"))
     ("Javanese"
      ("Noto Sans Javanese" "Tuladha Jejeg"))
     ("Kaithi"
      ("Noto Sans Kaithi"))
     ("Kana Supplement"
      ("Meiryo UI" "HanaMinA" "BabelStone Han"))
     ("Kanbun"
      ("SimHei" "FangSong" "SimSun" "Meiryo" "Arial Unicode MS" "WenQuanYi Zen Hei Mono" "HanaMinA" "BabelStone Han" "MingLiU" "Microsoft JhengHei" "Microsoft YaHei" "Microsoft YaHei UI" "HAN NOM A" "Code2000"))
     ("Kangxi Radicals"
      ("WenQuanYi Zen Hei Mono" "SimHei" "FangSong" "Meiryo" "SimSun" "Microsoft YaHei" "Microsoft YaHei UI" "BabelStone Han" "HanaMinA" "MingLiU" "Microsoft JhengHei" "Microsoft JhengHei UI" "HAN NOM A" "DFKai-SB" "AppleMyungjo" "Apple Symbols" "Code2000"))
     ("Kannada"
      ("Kannada Sangam MN" "Noto Sans Kannada" "Noto Sans Kannada UI" "Tunga" "Akshar Unicode" "Kedage" "Nirmala UI" "Kannada MN" "Arial Unicode MS" "Code2000"))
     ("Katakana"
      ("Osaka:spacing=m" "MS Gothic" "MingLiU" "Meiryo" "HanaMinA" "Arial Unicode MS" "BabelStone Han" "Microsoft JhengHei" "Microsoft YaHei" "Microsoft YaHei UI" "HAN NOM A" "Code2000" "ALPHABETUM Unicode"))
     ("Katakana Phonetic Extensions"
      ("MS Gothic" "MingLiU" "Meiryo" "HanaMinA" "Microsoft YaHei" "Microsoft YaHei UI" "BabelStone Han" "HAN NOM A" "Code2000"))
     ("Kayah Li"
      ("Noto Sans Kayah Li" "Code2000" "FreeMono"))
     ("Kharoshthi"
      ("Segoe UI Historic" "Noto Sans Kharoshthi" "MPH 2B Damase" "ALPHABETUM Unicode"))
     ("Khmer"
      ("Noto Sans Khmer" "Noto Sans Khmer UI" "Noto Serif Khmer" "Khmer Sangam MN" "DaunPenh" "Code2000" "MoolBoran" "Khmer Mondulkiri" "Khmer Busra"))
     ("Khmer Symbols"
      ("Noto Sans Khmer" "Noto Sans Khmer UI" "Noto Serif Khmer" "Khmer Sangam MN" "MoolBoran" "Khmer Mondulkiri" "Khmer Busra" "Code2000"))
     ("Khojki"
      ("KhojkiUnicodeOT"))
     ("Khudawadi"
      ("OldSindhi"))
     ("Lao"
      ("Noto Sans Lao" "Noto Sans Lao UI" "Noto Serif Lao" "Lao Sangam MN" "DokChampa" "DejaVu Sans Mono" "Arial Unicode MS" "Saysettha MX" "DejaVu Sans:width=condensed" "Code2000"))
     ("Latin Extended-C"
      ("DejaVu Sans Mono" "DejaVu Sans:width=condensed" "Noto Sans" "Cambria Math" "Gentium Plus" "Charis SIL" "Doulos SIL" "Code2000" "Quivira" "Everson Mono:weight=bold" "ALPHABETUM Unicode"))
     ("Latin Extended-D"
      ("FreeMono" "DejaVu Sans Mono" "DejaVu Sans:width=condensed" "Charis SIL" "Doulos SIL" "Junicode" "Cardo" "Quivira" "Code2000" "Everson Mono:weight=bold" "ALPHABETUM Unicode"))
     ("Latin Extended-E"
      ("Quivira" "Everson Mono:weight=bold" "HanaMinA"))
     ("Lepcha"
      ("Mingzat" "Noto Sans Lepcha"))
     ("Letterlike Symbols"
      ("Monaco" "Noto Sans Symbols" "Segoe UI Symbol" "Apple Symbols" "Cambria Math" "DejaVu Sans:width=condensed" "Arial Unicode MS" "Code2000" "Symbola" "Quivira" "HAN NOM A" "Everson Mono:weight=bold"))
     ("Limbu"
      ("Noto Sans Limbu" "Namdhinggo SIL" "MPH 2B Damase" "Code2000"))
     ("Linear A"
      ("Aegean"))
     ("Linear B Ideograms"
      ("Noto Sans Linear B" "Aegean" "Code2001" "Everson Mono:weight=bold" "ALPHABETUM Unicode" "MPH 2B Damase"))
     ("Linear B Syllabary"
      ("Noto Sans Linear B" "Aegean" "Code2001" "Everson Mono:weight=bold" "ALPHABETUM Unicode" "MPH 2B Damase" "Penuturesu"))
     ("Lisu"
      ("Lisu Unicode" "Miao Unicode" "Noto Sans Lisu" "Lisu Tzimu" "Quivira" "Everson Mono:weight=bold"))
     ("Lycian"
      ("Segoe UI Historic" "Noto Sans Lycian" "Aegean" "Quivira" "Everson Mono:weight=bold" "ALPHABETUM Unicode"))
     ("Lydian"
      ("Segoe UI Historic" "Noto Sans Lydian" "Aegean" "Quivira" "Everson Mono:weight=bold" "ALPHABETUM Unicode"))
     ("Mahjong Tiles"
      ("Segoe UI Symbol" "Symbola" "Noto Sans Symbols" "Quivira" "Everson Mono"))
     ("Malayalam"
      ("Malayalam Sangam MN" "Nirmala UI" "Kartika" "Code2000" "Akshar Unicode" "Samyak Malayalam" "Samyak" "Arial Unicode MS"))
     ("Mandaic"
      ("Noto Sans Mandaic"))
     ("Mathematical Alphanumeric Symbols"
      ("Cambria Math" "Noto Sans Symbols" "Asana Math" "Code2001" "Symbola" "Quivira" "Everson Mono:weight=bold"))
     ("Mathematical Operators"
      ("Monaco" "DejaVu Sans Mono" "Segoe UI Symbol" "Cambria Math" "DejaVu Sans:width=condensed" "Noto Sans Symbols" "Apple Symbols" "Asana Math" "Arial Unicode MS" "Code2000" "Symbola" "Quivira" "Everson Mono:weight=bold" "FreeMono"))
     ("Meetei Mayek"
      ("Noto Sans Meetei Mayek" "Eeyek Unicode" "Meetei Mayek"))
     ("Meetei Mayek Extensions"
      ("Noto Sans Meetei Mayek"))
     ("Meroitic Cursive"
      ("Nilus" "Segoe UI Historic" "Segoe UI Symbol"))
     ("Meroitic Hieroglyphs"
      ("Nilus"))
     ("Miao"
      ("Miao Unicode" "Albanian"))
     ("Miscellaneous Mathematical Symbols-A"
      ("Noto Sans Symbols" "Apple Symbols" "Segoe UI Symbol" "Asana Math" "Code2000" "Symbola" "Quivira" "Cambria Math" "Everson Mono:weight=bold"))
     ("Miscellaneous Mathematical Symbols-B"
      ("Noto Sans Symbols" "Segoe UI Symbol" "Apple Symbols" "Cambria Math" "Asana Math" "Code2000" "Symbola" "Quivira"))
     ("Miscellaneous Symbols"
      ("Noto Sans Symbols" "Segoe UI Symbol" "Apple Symbols" "DejaVu Sans Mono" "DejaVu Sans:width=condensed" "Arial Unicode MS" "Symbola" "Quivira" "MS Reference Sans Serif" "Cardo" "Code2000" "Everson Mono:weight=bold"))
     ("Miscellaneous Symbols and Arrows"
      ("Symbola" "Quivira" "Asana Math" "Code2000" "Segoe UI Symbol" "Noto Sans Symbols"))
     ("Miscellaneous Symbols and Pictographs"
      ("Apple Color Emoji" "Segoe UI Symbol" "Symbola" "Quivira"))
     ("Miscellaneous Technical"
      ("Segoe UI Symbol" "Noto Sans Symbols" "Apple Symbols" "Cambria Math" "DejaVu Sans Mono" "Code2000" "Symbola" "Quivira" "Everson Mono:weight=bold"))
     ("Modi"
      ("MarathiCursiveG"))
     ("Modifier Tone Letters"
      ("Apple Symbols" "Noto Sans Symbols" "Gentium Plus" "Code2000" "Quivira" "Charis SIL" "Doulos SIL" "DejaVu Sans Mono"))
     ("Mongolian"
      ("STFangsong" "STHeiti" "STKaiti" "STSong" "Noto Sans Mongolian" "Mongolian Baiti" "Daicing Xiaokai" "Code2000"))
     ("Mro"
      ("Mro Unicode"))
     ("Musical Symbols"
      ("Noto Sans Symbols" "Musica" "FreeSerif" "Symbola" "Quivira"))
     ("Myanmar"
      ("Noto Sans Myanmar" "Noto Sans Myanmar UI" "Myanmar Text" "Myanmar Sangam MN" "Myanmar MN" "TharLon" "Yunghkio" "Myanmar3" "Masterpiece Uni Sans" "Padauk" "Code2000" "Tai Le Valentinium"))
     ("Myanmar Extended-A"
      ("Noto Sans Myanmar" "Noto Sans Myanmar UI" "Myanmar Text" "Padauk" "TharLon" "Yunghkio"))
     ("Myanmar Extended-B"
      ("TharLon" "Yunghkio"))
     ("Nabataean"
      ("Everson Mono:weight=bold"))
     ("New Tai Lue"
      ("Noto Sans New Tai Lue" "Microsoft New Tai Lue" "Dai Banna SIL Book" "Dai Banna SIL Book:style=Regular"))
     ("NKo"
      ("Ebrima" "Conakry" "DejaVu Sans:width=condensed" "Noto Sans NKo" "Code2000"))
     ("Number Forms"
      ("DejaVu Sans:width=condensed" "Asana Math" "Arial Unicode MS" "Junicode" "Symbola" "Quivira" "Charis SIL" "Doulos SIL" "Code2000" "Everson Mono:weight=bold" "FreeMono" "ALPHABETUM Unicode"))
     ("Ogham"
      ("Segoe UI Historic" "Segoe UI Symbol" "Noto Sans Ogham" "DejaVu Sans:width=condensed" "BabelStone Modern" "Code2000" "Aboriginal Serif" "Quivira" "Everson Mono:weight=bold" "ALPHABETUM Unicode"))
     ("Ol Chiki"
      ("Nirmala UI" "Noto Sans Ol Chiki" "Code2000"))
     ("Old Hungarian"
      ("OldHungarian"))
     ("Old Italic"
      ("Segoe UI Historic" "Segoe UI Symbol" "DejaVu Sans:width=condensed" "Cardo" "New Athena Unicode" "Aegean" "Noto Sans Old Italic" "Albanian" "Code2001" "Quivira" "Everson Mono:weight=bold" "FreeMono" "ALPHABETUM Unicode"))
     ("Old North Arabian"
      ("Marib"))
     ("Old Permic"
      ("Everson Mono:weight=bold"))
     ("Old Persian"
      ("Segoe UI Historic" "Noto Sans Old Persian" "MPH 2B Damase" "Aegean" "Code2001" "FreeSans" "ALPHABETUM Unicode"))
     ("Old South Arabian"
      ("Segoe UI Historic" "Noto Sans Old South Arabian" "Quivira" "Qataban" "Everson Mono:weight=bold"))
     ("Old Turkic"
      ("Noto Sans Old Turkic" "Segoe UI Historic" "Segoe UI Symbol" "Quivira" "Everson Mono:weight=bold"))
     ("Optical Character Recognition"
      ("Apple Symbols" "Segoe UI Symbol" "Noto Sans Symbols" "Arial Unicode MS" "Symbola" "Quivira" "FreeMono" "BabelStone Modern" "Code2000" "Everson Mono"))
     ("Oriya"
      ("Noto Sans Oriya" "Oriya Sangam MN" "Nirmala UI" "Kalinga" "Samyak Oriya" "Samyak" "Code2000" "Arial Unicode MS"))
     ("Ornamental Dingbats"
      ("Symbola"))
     ("Osmanya"
      ("Noto Sans Osmanya" "Ebrima" "Andagii" "MPH 2B Damase" "Code2001" "Everson Mono:weight=bold"))
     ("Phags-pa"
      ("BabelStone Phags-pa Book" "BabelStone Phags-pa Book:style=Regular" "Noto Sans Phags-pa" "Microsoft PhagsPa" "Code2000"))
     ("Phaistos Disc"
      ("Aegean" "Noto Sans Symbols" "Symbola" "Everson Mono:weight=bold" "Code2001" "ALPHABETUM Unicode"))
     ("Phoenician"
      ("Segoe UI Historic" "Noto Sans Phoenician" "Aegean" "Quivira" "Code2001" "Everson Mono:weight=bold" "ALPHABETUM Unicode"))
     ("Phonetic Extensions"
      ("Monaco" "Consolas" "Calibri" "Noto Sans" "Aboriginal Sans" "Charis SIL" "Doulos SIL" "Quivira" "Courier New" "DejaVu Sans:width=condensed" "Code2000" "Everson Mono:weight=bold" "ALPHABETUM Unicode"))
     ("Phonetic Extensions Supplement"
      ("Consolas" "Calibri" "Courier New" "Noto Sans" "Aboriginal Sans" "Charis SIL" "Doulos SIL" "Quivira" "DejaVu Sans Mono" "DejaVu Sans:width=condensed" "Code2000" "Everson Mono:weight=bold" "ALPHABETUM Unicode"))
     ("Playing Cards"
      ("DejaVu Sans:width=condensed" "Symbola" "Noto Sans Symbols" "Segoe UI Symbol" "Quivira"))
     ("Private Use Area"
      ("DejaVu Sans Mondo"))
     ("Rejang"
      ("Noto Sans Rejang" "Code2000" "Everson Mono:weight=bold"))
     ("Rumi Numeral Symbols"
      ("HanaMinA"))
     ("Runic"
      ("Noto Sans Runic" "Segoe UI Historic" "Segoe UI Symbol" "Aboriginal Serif" "Junicode" "FreeMono" "Quivira" "Code2000" "Cardo" "Everson Mono:weight=bold" "ALPHABETUM Unicode"))
     ("Samaritan"
      ("Noto Sans Samaritan" "Quivira" "Everson Mono:weight=bold"))
     ("Saurashtra"
      ("Noto Sans Saurashtra" "Code2000" "Sourashtra"))
     ("Sharada"
      ("Albanian"))
     ("Shavian"
      ("Segoe UI Historic" "Noto Sans Shavian" "Andagii" "MPH 2B Damase" "Apple Symbols" "Code2001" "Everson Mono:weight=bold"))
     ("Siddham"
      ("MuktamsiddhamG"))
     ("Sinhala"
      ("Noto Sans Sinhala" "Nirmala UI" "Iskoola Pota" "Akshar Unicode" "Sinhala Sangam MN"))
     ("Small Form Variants"
      ("Apple Symbols" "Arial Unicode MS" "WenQuanYi Zen Hei Mono" "Microsoft YaHei" "Microsoft YaHei UI" "Code2000"))
     ("Sora Sompeng"
      ("Nirmala UI"))
     ("Specials"
      ("BabelStone Modern" "Noto Sans Symbols" "Apple Symbols" "Arial Unicode MS" "Symbola" "DejaVu Sans Mono" "DejaVu Sans:width=condensed" "Quivira" "FreeMono" "BabelStone Han"))
     ("Sundanese"
      ("Noto Sans Sundanese" "Sundanese Unicode"))
     ("Sundanese Supplement"
      ("Noto Sans Sundanese"))
     ("Superscripts and Subscripts"
      ("Consolas" "Monaco" "Apple Symbols" "Cambria Math" "DejaVu Sans Mono" "DejaVu Sans:width=condensed" "Segoe UI Symbol" "Asana Math" "Charis SIL" "Doulos SIL" "Symbola" "Quivira" "Everson Mono:weight=bold" "FreeMono"))
     ("Supplemental Arrows-A"
      ("Segoe UI Symbol" "Cambria Math" "DejaVu Sans:width=condensed" "Asana Math" "Quivira" "Symbola" "Apple Symbols" "Noto Sans Symbols" "Code2000" "Everson Mono:weight=bold" "FreeMono" "BabelStone Modern"))
     ("Supplemental Arrows-B"
      ("Cambria Math" "Segoe UI Symbol" "Apple Symbols" "Noto Sans Symbols" "Asana Math" "Quivira" "Symbola" "Code2000" "Everson Mono:weight=bold"))
     ("Supplemental Arrows-C"
      ("Symbola"))
     ("Supplemental Mathematical Operators"
      ("Cambria Math" "Segoe UI Symbol" "Noto Sans Symbols" "Apple Symbols" "Asana Math" "Code2000" "Symbola" "Quivira" "Everson Mono:weight=bold"))
     ("Supplemental Punctuation"
      ("DejaVu Sans Mono" "Segoe UI Symbol" "Noto Sans Symbols" "Antinoou" "New Athena Unicode" "Cardo" "Aegean" "Symbola" "Quivira" "Everson Mono:weight=bold" "Code2000" "ALPHABETUM Unicode"))
     ("Supplemental Symbols and Pictographs"
      ("Symbola"))
     ("Syloti Nagri"
      ("Noto Sans Syloti Nagri" "MPH 2B Damase"))
     ("Syriac"
      ("Segoe UI Historic" "Estrangelo Edessa" "Estrangelo Nisibin" "Code2000"))
     ("Tagalog"
      ("Quivira" "Noto Sans Tagalog"))
     ("Tagbanwa"
      ("Noto Sans Tagbanwa" "Quivira"))
     ("Tags"
      ("BabelStone Modern" "BabelStone Han"))
     ("Tai Le"
      ("Microsoft Tai Le" "TharLon" "Noto Sans Tai Le" "Yunghkio" "Tai Le Valentinium" "MPH 2B Damase" "FreeSerif"))
     ("Tai Tham"
      ("Noto Sans Tai Tham" "Lanna Alif" "Chiangsaen Alif" "Lanna Unicode UI" "Monlam Uni Sans Serif"))
     ("Tai Viet"
      ("Tai Heritage Pro" "Noto Sans Tai Viet"))
     ("Tai Xuan Jing Symbols"
      ("WenQuanYi Zen Hei Mono" "Apple Symbols" "Noto Sans Symbols" "Segoe UI Symbol" "BabelStone Han" "DejaVu Sans:width=condensed" "Symbola" "Quivira" "BabelStone Modern" "Code2001" "Everson Mono:weight=bold"))
     ("Takri"
      ("Albanian"))
     ("Tamil"
      ("Latha" "Noto Sans Tamil" "Noto Sans Tamil UI" "Nirmala UI" "Tamil MN" "Tamil Sangam MN" "InaiMathi" "Vijaya" "Maduram" "Akshar Unicode" "Samyak Tamil" "Samyak" "Code2000" "Arial Unicode MS"))
     ("Telugu"
      ("Noto Sans Telugu" "Noto Sans Telugu UI" "Telugu Sangam MN" "Vani" "Nirmala UI" "Gautami" "Akshar Unicode" "Code2000" "Arial Unicode MS"))
     ("Thaana"
      ("MV Boli" "Noto Sans Thaana" "MPH 2B Damase" "Code2000" "Everson Mono:weight=bold"))
     ("Thai"
      ("Thonburi" "DokChampa" "Noto Sans Thai" "Noto Sans Thai UI" "Noto Serif Thai" "Ayuthaya" "Silom" "Krungthep" "Sathu" "Angsana New" "AngsanaUPC" "Code2000" "Tahoma" "Arial Unicode MS" "Quivira" "Everson Mono:weight=bold"))
     ("Tibetan"
      ("Noto Sans Tibetan" "Kailasa" "Kokonor" "Tibetan Machine Uni" "Microsoft Himalaya" "Jomolhari" "Monlam Uni Sans Serif" "Arial Unicode MS"))
     ("Tifinagh"
      ("Noto Sans Tifinagh" "Ebrima" "DejaVu Sans:width=condensed" "Code2000" "Quivira" "Everson Mono:weight=bold"))
     ("Transport and Map Symbols"
      ("Apple Color Emoji" "Segoe UI Symbol" "Symbola"))
     ("Ugaritic"
      ("Segoe UI Historic" "Noto Sans Ugaritic" "Aegean" "Code2001" "Andagii" "Quivira" "Everson Mono:weight=bold" "FreeSans" "ALPHABETUM Unicode"))
     ("Unified Canadian Aboriginal Syllabics"
      ("Aboriginal Sans" "Aboriginal Serif" "Noto Sans Canadian Aboriginal" "Gadugi" "Euphemia UCAS" "Euphemia" "Code2000" "Quivira" "Everson Mono:weight=bold"))
     ("Unified Canadian Aboriginal Syllabics Extended"
      ("Aboriginal Sans" "Aboriginal Serif" "Noto Sans Canadian Aboriginal" "Gadugi" "Euphemia UCAS" "Euphemia" "Quivira" "Everson Mono:weight=bold"))
     ("Vai"
      ("Ebrima" "Noto Sans Vai" "Dukor" "Wakor" "Code2000" "Quivira"))
     ("Variation Selectors"
      ("BabelStone Modern" "BabelStone Han" "Code2000"))
     ("Variation Selectors Supplement"
      ("BabelStone Modern" "BabelStone Han"))
     ("Vedic Extensions"
      ("Siddhanta"))
     ("Vertical Forms"
      ("Microsoft YaHei" "Microsoft YaHei UI" "Symbola"))
     ("Yi Radicals"
      ("Noto Sans Yi" "Nuosu SIL" "Microsoft Yi Baiti" "STFangsong" "Code2000"))
     ("Yi Syllables"
      ("Noto Sans Yi" "Nuosu SIL" "Microsoft Yi Baiti" "STFangsong" "Code2000"))
     ("Yijing Hexagram Symbols"
      ("WenQuanYi Zen Hei Mono" "Noto Sans Symbols" "Segoe UI Symbol" "Apple Symbols" "DejaVu Sans:width=condensed" "BabelStone Han" "Symbola" "Quivira" "BabelStone Modern" "Code2000" "Everson Mono:weight=bold"))))
 '(vc-annotate-background "#93a1a1")
 '(vc-annotate-background-mode nil)
 '(vc-annotate-color-map
   '((20 . "#990A1B")
     (40 . "#FF6E64")
     (60 . "#cb4b16")
     (80 . "#7B6000")
     (100 . "#b58900")
     (120 . "#DEB542")
     (140 . "#546E00")
     (160 . "#859900")
     (180 . "#B4C342")
     (200 . "#3F4D91")
     (220 . "#6c71c4")
     (240 . "#9EA0E5")
     (260 . "#2aa198")
     (280 . "#69CABF")
     (300 . "#00629D")
     (320 . "#268bd2")
     (340 . "#69B7F0")
     (360 . "#d33682")))
 '(vc-annotate-very-old-color "#93115C")
 '(weechat-color-list
   '(unspecified "#002b36" "#073642" "#a7020a" "#dc322f" "#5b7300" "#859900" "#866300" "#b58900" "#0061a8" "#268bd2" "#a00559" "#d33682" "#007d76" "#2aa198" "#839496" "#657b83"))
 '(window-divider-default-right-width 1)
 '(window-divider-mode t)
 '(xterm-color-names
   ["#073642" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#eee8d5"])
 '(xterm-color-names-bright
   ["#002b36" "#cb4b16" "#586e75" "#657b83" "#839496" "#6c71c4" "#93a1a1" "#fdf6e3"]))

                                        ;miscellaneous stuff I like
(add-to-list 'completion-styles 'initials t)

;; TABS CONFIG
(setq tab-always-indent 'complete)
;; don't insert tabs for spaces
(setq indent-tabs-mode nil)

;; using whitespace mode
;; (OPTIONAL) Visualize tabs as a pipe character - "|"
;; This will also show trailing characters as they are useful to spot.
;(setq whitespace-style '(face tabs tab-mark trailing))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(whitespace-tab ((t (:foreground "#636363")))))
(setq whitespace-display-mappings
      '((tab-mark 9 [124 9] [92 9]))) ; 124 is the ascii ID for '\|'
;;(global-whitespace-mode) ; Enable whitespace mode everywhere
;; END TABS CONFIG


(setq menu-bar-mode t)
(scroll-bar-mode -1)
(setq ring-bell-function 'ignore)
(desktop-save-mode 1)
(setq-default indicate-empty-lines t)
(setq bookmark-save-flag 1)
(auto-save-mode -1)
(recentf-mode 1)
(fset 'yes-or-no-p 'y-or-n-p)
;; default tabs display width
(setq-default tab-width 2)

;; browse-kill-ring
(when (require 'browse-kill-ring nil 'noerror)
  (browse-kill-ring-default-keybindings))

(global-set-key "\C-cy" #'(lambda ()
                         (interactive)
                         (popup-menu 'yank-menu)))

;; auto revert buffers when a file changes outside the buffer
(global-auto-revert-mode 1)

;; hide passwords
(add-hook 'comint-output-filter-functions 'comint-watch-for-password-prompt )

;; sudo helper
(defun sudo-find-file (file-name)
  "Like find file, but opens the file as root."
  (interactive "FSudo Find File: ")
  (let ((tramp-file-name (concat "/sudo::" (expand-file-name file-name))))
    (find-file tramp-file-name)))

;; match parenthesis
(show-paren-mode t)
;;(global-set-key "%" 'match-paren)
(defun match-paren (arg)
  "Go to the matching parenthesis if on parenthesis otherwise insert %."
  (interactive "p")
  (cond ((looking-at "\\s\(") (forward-list 1) (backward-char 1))
        ((looking-at "\\s\)") (forward-char 1) (backward-list 1))
        (t (self-insert-command (or arg 1)))))

;; company does text completion everywhere
;; it does file completion in the shell
;; combined with fish it does a popup I think
;(global-company-mode t)

;; IELM Mode
(add-hook 'ielm-mode-hook #'(lambda () (set (make-local-variable 'company-backends) '(company-elisp))))

;; Making unicode work
(require 'unicode-fonts)
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

;; Go Lang ---------------------

;(require 'company)
;(require 'company-go)

;; (add-to-list 'auto-mode-alist '("\\.proto\\'" . go-mode))

;(defun my-go-mode-hook ()
;  (set (make-local-variable 'company-backends) '(company-go))
;  (company-mode)

;  (setq tab-width 4)
;  (go-eldoc-setup)
 ;; Use goimports instead of go-fmt
;  (setq gofmt-command "goimports")
 ;; Call Gofmt before saving
;  (add-hook 'before-save-hook 'gofmt-before-save)
 ;; Customize compile command to run go build
;  (if (not (string-match "go" compile-command))
;      (set (make-local-variable 'compile-command)
          ;;"go build -v && go test -v && go vet"))
;           "go install -v")))
;(add-hook 'go-mode-hook 'my-go-mode-hook)

;(; Customize compile command to run go build
(setq compile-command "/usr/local/go/bin/go install -v")



;; End Go Lang -------------------

;
;; -----BEGIN ------- THIS SECTION WORKS GREAT FOR JAVA but Requires 11 --------------------
;; Java Setup
                                        ;(use-package lsp-mode
                                        ;  :init
                                        ;  (setq lsp-prefer-flymake nil)
                                        ;  :demand t
                                        ;  :after jmi-init-platform-paths)

                                        ;(use-package lsp-ui
                                        ;  :config
                                        ;  (setq lsp-ui-doc-enable t
                                        ;        lsp-ui-sideline-enable t
                                        ;        lsp-ui-flycheck-enable t)
                                        ;  :after lsp-mode)

                                        ;(use-package dap-mode
                                        ;  :config
                                        ;  (dap-mode t)
                                        ;  (dap-ui-mode t))
                                        ;(require 'lsp-java)
                                        ;(add-hook 'java-mode-hook #'lsp)

;; ------------ END JAVA SETUP ----------------


;; Ruby etal support for finding definitions
(dumb-jump-mode)

;; performance improvment that breaks some of vc?
(remove-hook 'find-file-hooks 'vc-find-file-hook)

;; Ruby customization
(setq ruby-indent-level 2)

;; IDO mode
;(require 'ido)
;(ido-mode t)

;(global-set-key
 "\M-x"
; (lambda ()
;   (interactive)
;   (call-interactively
;    (intern
;     (ido-completing-read
;      "M-x "
;      (all-completions "" obarray 'commandp))))))

;(ido-vertical-mode t)
;(setq ido-vertical-define-keys 'C-n-and-C-p-only)

;; Use ido to find files in ibuffer
;(defun ibuffer-ido-find-file (file &optional wildcards)
;  "Like `ido-find-file', but default to the directory of the buffer at point."
;  (interactive
;   (let ((default-directory
;           (let ((buf (ibuffer-current-buffer)))
;             (if (buffer-live-p buf)
;                 (with-current-buffer buf
;                   default-directory)
;               default-directory))))
;     (list (ido-read-file-name "Find file: " default-directory) t)))
;  (find-file file wildcards))

;(add-hook 'ibuffer-mode-hook
;          (lambda ()
;            (define-key ibuffer-mode-map "\C-x\C-f"
;              'ibuffer-ido-find-file)
;            (ibuffer-switch-to-saved-filter-groups "programming-mode")))

;;; Smex - enhances IDO
(autoload 'smex "smex"
  "Smex is a M-x enhancement for Emacs, it provides a convenient interface to
your recently and most frequently used commands.")

(global-set-key (kbd "M-x") 'smex)

;; trying to get feature-mode to work
;; don't think this is needed; (setq feature-default-i18n-file "./gems/ruby-2.2.5/gems/gherkin-2.11.8/lib/gherkin/i18n.json")
(setq feature-step-search-path "*/**/*.rb")

;; ido-better-flex is being used to have a 'better' fuzzy match algorithm for smex. Uninstall if not likey.

;; ido-ubiquitous is being used - how is that showing up?

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Customize ibuffer and directory name displays for our projectss
;; Set the icon and frame titles %f file name, %b buffer name
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(setq icon-title-format "%b")
(setq frame-title-format "%b - %f")

(require 'ibuffer)
;; And then customize ibuffer
;; Use human readable Size column instead of original one
(define-ibuffer-column size-h
  (:name "Size" :inline t)
  (cond
   ((> (buffer-size) 1000000) (format "%7.3fM" (/ (buffer-size) 1000000.0)))
   ((> (buffer-size) 1000) (format "%7.0fk" (/ (buffer-size) 1000.0)))
   (t (format "%8d" (buffer-size)))))

;; The following code adds a ‘dirname’ format to ibuffer to shorten the filename
;; and show only the directory:

(defvar filename-subs
  '(("~/go/src/github.com/" . "[github]/")
    ("~/dev/engage-infra/" . "[tf]/")))

(defvar absolute-filename-subs
  '(("/Users/ray/go/src/github.com/" . "[github]/")
    ("/Users/ray/go/src/github.com/rayhixson/" . "[github/rh]/")
    ("/Users/ray/go/src/github.com/rayhixson/zenfoo/" . "[zenfoo]/")))

(defun str-replace-all (str pats)
  (if (null pats)
      str
    (let* ((pat (car pats))
           (lhs (car pat))
           (rhs (cdr pat)))
      (replace-regexp-in-string lhs rhs (str-replace-all str (cdr pats))))))

(define-ibuffer-column my-filename-and-process
  (:name "Filename/Process"
         :header-mouse-map ibuffer-filename/process-header-map
         :summarizer
         (lambda (strings)
           (setq strings (delete "" strings))
           (let ((procs 0)
	               (files 0))
             (dolist (string strings)
	             (if (string-match "\\(?:\\`([[:ascii:]]+)\\)" string)
	                 (progn (setq procs (1+ procs))
		                      (if (< (match-end 0) (length string))
			                        (setq files (1+ files))))
	               (setq files (1+ files))))
             (concat (cond ((zerop files) "No files")
		                       ((= 1 files) "1 file")
		                       (t (format "%d files" files)))
	                   ", "
	                   (cond ((zerop procs) "no processes")
		                       ((= 1 procs) "1 process")
		                       (t (format "%d processes" procs)))))))
  (let ((proc (get-buffer-process buffer))
	      (filename (ibuffer-make-column-filename buffer mark)))
    (if proc
	      (concat (propertize (format "(%s %s)" proc (process-status proc))
			                      'font-lock-face 'italic)
		            (if (> (length filename) 0)
		                (format " %s" filename)
		              ""))
	    (str-replace-all filename filename-subs))))

;; nearly all of this is the default layout
(setq ibuffer-formats
      '((mark modified read-only " "
			        (name 30 30 :left)
			        " "
			        my-filename-and-process)
		    (mark modified read-only " "
              (name 30 30 :left :elide) ; change: 30s were originally 18s
              " "
              (size 9 -1 :right)
              " "
              (mode 16 16 :left :elide)
              " " filename-and-process)))

(setq ibuffer-saved-filter-groups
      '(("programming-mode"
         ("Terraform"
          (filename . ".+\\.tf"))
         ("YAML"
          (or
           (name . ".+\\.yaml")
           (name . ".+\\.yml")))
         ("Java / Groovy"
          (or
           (filename . ".+\\.java")
           (filename . ".+\\.groovy")))
         ("HTML / JSON"
          (or
           (used-mode . html-mode)
           (used-mode . mhtml-mode)
           (used-mode . css-mode)
           (used-mode . js-mode)
           (used-mode . js2-mode)
           (filename . ".+\\.json")))
         ("Scripts"
          (filename . ".+\\.sh"))
         ("Text"
          (or
           (used-mode . text-mode)))
         ("Shells"
          (or
           (used-mode . shell-mode)
           (used-mode . eshell-mode)))
         ("Magit"
          (name . ".*magit.*"))
         ("Go"
          (or
           (used-mode . go-mode)
           (used-mode . protobuf-mode)))
         ("DIR"
          (used-mode . dired-mode))
         ("Star Buffers"
          (name . "^\\*")))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; END Customize ibuffer
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun killmylandlord ()
  (kill-buffer (current-buffer)))

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

(setq
 backup-by-copying t      ; don't clobber symlinks
 backup-directory-alist
 '(("." . "~/.saves/"))    ; don't litter my fs tree
 delete-old-versions t
 kept-new-versions 6
 kept-old-versions 2)

;; BEGIN ESHELL SECTION
(add-hook 'eshell-mode-hook
          (lambda () 
            (define-key eshell-mode-map (kbd "<tab>")
              (lambda () (interactive) (pcomplete-std-complete)))))

;; make history use ido
                                        ;  ((kbd "C-c C-l") . ido-eshell-comint-history)
                                        ;(defun ido-eshell-comint-history ()
                                        ;  "eshell & comint history with ido."
                                        ;  (interactive)
                                        ;  (if (or (member major-mode '(eshell-mode sql-interactive-mode))
                                        ;          (derived-mode-p 'comint-mode))
                                        ;     (let ((ring (if (eq major-mode 'eshell-mode)
                                        ;                   eshell-history-ring
                                        ;                   comint-input-ring)))
                                        ;       (insert
                                        ;        (ido-completing-read "History: "
                                        ;                             (delete-dups
                                        ;                              (ring-elements ring)))))
                                        ;    (message "Unsupported mode")))
:

;; this was really golden, but I moved this functionality into
;; ~/.emacs.d/elpa/eshell-git-prompt-20200109.2250/eshell-git-prompt.el
;;
                                        ;(setq eshell-prompt-function
                                        ;(lambda ()
                                        ;  (concat
                                        ;   (propertize "┌─[" 'face `(:foreground "green"))
                                        ;   (propertize (user-login-name) 'face `(:foreground "red"))
                                        ;   (propertize "@" 'face `(:foreground "green"))
                                        ;   (propertize (git-branch) 'face `(:foreground "blue"))
                                        ;   (propertize "]──[" 'face `(:foreground "green"))
                                        ;   (propertize (format-time-string "%H:%M" (current-time)) 'face `(:foreground "yellow"))
                                        ;   (propertize "]──[" 'face `(:foreground "green"))
                                        ;   (propertize (concat (eshell/pwd)) 'face `(:foreground "white"))
                                        ;   (propertize "]\n" 'face `(:foreground "green"))
                                        ;   (propertize "└─>" 'face `(:foreground "green"))
                                        ;   (propertize (if (= (user-uid) 0) " # " " $ ") 'face `(:foreground "green"))
                                        ;   )))

;; (eshell-git-prompt-use-theme "rays")
;; END ESHELL SECTION


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Key bindings
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;; most useless function ever
(global-unset-key (kbd "C-t"))

;; also not used
(global-unset-key (kbd "M-l"))

(setq mac-command-modifier 'meta) ;; Sets the command (Apple) key as Meta

(require 'bind-key)
(bind-keys*
 ("C-M-b" . ido-switch-buffer)
 ([\M-up] . scroll-down-line)
 ([\M-down] . scroll-up-line)

 ;; Function key bindings
 ([f2] . compile)
 ([f3] . revert-buffer)
 ([f4] . menu-bar-next-tag)
 ([f6] . go-guru-referrers)
 ([\S-f7] . previous-error)
 ([f7] . next-error)
 ([f8] . shell)
 ([\S-f8] . rename-buffer)

 ("C-j" . goto-line)
 ;; iBuffer is subborn about this key:
 ;;(define-key ibuffer-mode-map (kbd "M-o") nil)
 ("M-o" . ace-window)
 ("M-m" . ag-regexp)
 ("C-o" . recentf-open-files)
 ("M-i" . ibuffer)

 ("M-`" . other-frame)

 ((kbd "<M-right>") . next-buffer)
 ((kbd "<M-left>") . previous-buffer)

 ;; this used to be default
 ("M-*" . pop-tag-mark)

 ((kbd "C-M-f") . find-file)

 ((kbd "C-x g") . magit-status)

 ((kbd "C-x k") . kill-this-buffer)

 ((kbd "C-s") . swiper-isearch)
 ((kbd "C-r") . swiper-backward)
 )
; ((kbd "C-s") . isearch-forward))

;; paganini is ok but a little too harsh in contrasts
;;(load-theme 'paganini :no-confirm)
;;(load-theme 'yoshi :no-confirm)
;;(load-theme 'wheatgrass 'no-confirm)
;;(load-theme 'deeper-blue 'no-confirm)
;;(load-theme 'manoj-dark 'no-confirm) ;; very high contrast

;;;;;;;;;;;;;;;;;
;; package notes

;; Completions related
;; company
;; ido
;; vertico
;; fish

;; notes
;; I just deleted company-fuzzy - may want it back

;; I just deleted these idos:
;;  ido-better-flex                0.2            installed             A better flex (fuzzy) algorithm for Ido.
;;  ido-ubiquitous                 20180122.1340  installed             Use ido (nearly) everywhere.

;; I just deleted these:
;  vertico                        1.4            installed             VERTical Interactive COmpletion
;  vertico-posframe               0.7.2          installed             Using posframe to show Vertico
;  vertico-prescient              20230221.1257  installed             prescient.el + Vertico


;;;;;;;;;;;;;;;;;;;; Begin ERC

;; enable notifications
(rcirc-track-minor-mode 1)

;;;;;;;;;;;;;;;;;;;; End ERC

(require 'git-link)
(eval-after-load 'git-link
  '(progn
     (add-to-list 'git-link-remote-alist
                  '("bit\\.xenial\\.com" git-link-bitbucket))
     (add-to-list 'git-link-commit-remote-alist
                  '("bit\\.xenial\\.com" git-link-commit-bitbucket))
     (add-to-list 'git-link-remote-alist
                  '("github\\.globalpay\\.com" git-link-github))
     (add-to-list 'git-link-commit-remote-alist
                  '("github\\.globalpay\\.com" git-link-commit-github))))

;; open file to last known location
(require 'saveplace)
(setq save-place-file "~/.emacs.d/saveplace")
(save-place-mode)

;;
                                        ;(require 'window-purpose)
                                        ;(purpose-mode)

;; Need these two lines to get aliases working with M-x !
(setq shell-file-name "zsh")
(setq shell-command-switch "-ic")

;; Kill colorized cucumber output in compile output mode
                                        ;(require 'ansi-color)
                                        ;(defun colorize-compilation-buffer ()
                                        ;  (let ((inhibit-read-only t))
                                        ;    (ansi-color-apply-on-region (point-min) (point-max))))
                                        ;(add-hook 'compilation-filter-hook 'colorize-compilation-buffer)

;; guess-style configs
                                        ;(autoload 'guess-style-set-variable "guess-style" nil t)
                                        ;(autoload 'guess-style-guess-variable "guess-style")
                                        ;(autoload 'guess-style-guess-all "guess-style" nil t)
                                        ;(global-guess-style-info-mode)

                                        ;(add-hook 'c-mode-common-hook 'guess-style-guess-all)
                                        ;(add-hook 'javascript-mode-hook 'guess-style-guess-all)
                                        ;(add-hook 'mhtml-mode-hook 'guess-style-guess-all)
                                        ;(add-hook 'html-mode-hook 'guess-style-guess-all)
                                        ;(add-hook 'js-mode-hook 'guess-style-guess-all)
                                        ;(add-hook 'ruby-mode-hook 'guess-style-guess-all)
                                        ;(add-hook 'feature-mode-hook 'guess-style-guess-all)

(use-package restclient
  :ensure t
  :mode (("\\.http\\'" . restclient-mode)))

;; svg is broken, use this until emacs 29 comes out - soon!
(add-to-list 'image-types 'svg)

;; this is not working, what if we do it last?
(setq-default save-place-mode t)


;; Custom macros
(fset 'go-err-block
      [?i ?f ?  ?e ?r ?r ?  ?! ?= ?  ?n ?i ?l ?  ?\{ return ?r ?e ?t ?u ?r ?n ?  ?e ?r ?r return ?\} return])

(defun start-shells()
  "Do the things"
  (interactive)
  (split-window-right)
  (eshell)
  (rename-buffer "shell-e")
  (shell)
  (rename-buffer "shell-main"))

(cd "~/dev/")
(start-shells)

