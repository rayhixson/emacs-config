;; These are packages I'm testing out.
;; When I decide to keep them I will move them to a more permanent package


;; (use-package casual-dired
;;   :bind (:map dired-mode-map ("C-o" . 'casual-dired-tmenu)))

;; dependency for blist
(use-package ilist
  :straight t)

;; Display bookmarks in a iBuffer way
(use-package blist
  :straight t)

(setq blist-filter-groups
      (list
       (cons "Boulder" #'blist-boulder-p)
       (cons "Boulder Test" #'blist-boulderspec-p)
       (cons "Eshell" #'blist-eshell-p)
       (cons "ELisp" #'blist-elisp-p)
       (cons "Default" #'blist-default-p)))

;; Whether one wants to use the header line or not
(setq blist-use-header-p t)

;; Just use manual filter groups for this example
(setq blist-filter-features (list 'manual))

;; Eshell and Default are defined in the package by default

(blist-define-criterion "boulderspec" "Boulder Test"
  (string-match-p
   ".*/dev/boulder/spec/*"
   (bookmark-get-filename bookmark)))

(blist-define-criterion "boulder" "Boulder"
  (string-match-p
   ".*/dev/boulder/app/*"
   (bookmark-get-filename bookmark)))

(blist-define-criterion "elisp" "ELisp"
  (string-match-p
   "\\.el$"
   (bookmark-get-filename bookmark)))

(blist-define-criterion "info" "Info"
  (eq (bookmark-get-handler bookmark)
      #'Info-bookmark-jump))

(provide 'init-experimental)
