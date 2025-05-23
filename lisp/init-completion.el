;; Thins like help, ido, vertico, etc

;; company-mode (short for Complete Anything) is a text completion framework for Emacs. It provides auto-completion for programming languages, shell commands, filenames, and more.
;; in particular it provides pop-ups like IDEs
(use-package company
  :init
  ;;(global-company-mode)   ;; Enable company everywhere
  :custom
  (company-idle-delay 0.2) ;; Show suggestions after 0.2s
  (company-minimum-prefix-length 2) ;; Start suggesting after 2 characters
  (company-tooltip-align-annotations t) ;; Align annotations nicely
  (company-selection-wrap-around t) ;; Wrap around when navigating
  :bind
  (:map company-active-map
        ("TAB" . company-complete-selection)))

;; company-box Adds icons and documentation popups
(use-package company-box
  :hook (company-mode . company-box-mode))

;; this is really great - as good as vertico, but I'm enjoying vertico-multiform-mode
;; (fido-vertical-mode t)

(defun my-consult-ripgrep-with-directory ()
  "Run `consult-ripgrep` with a directory prompt, simulating `C-u M-m`."
  (interactive)
  (let ((current-prefix-arg '(4)))  ;; Simulate C-u
    (call-interactively #'consult-ripgrep)))

;; Vertico is an Emacs package that provides a minimalist and efficient vertical completion interface for various Emacs commands. It replaces the default completion UI with a more user-friendly vertical list, making it easier to navigate and select completion candidates.
(use-package vertico
  :init
  (require 'vertico-directory)
  (add-hook 'rfn-eshadow-update-overlay-hook #'vertico-directory-tidy)

;;  orderless for more advanced fuzzy matching
  (use-package orderless
    :commands (orderless)
    :custom (completion-styles '(orderless flex)))

  (vertico-mode t)
  :config
  ;; make some vertico actions show up in a buffer instead of minibuffer
  (setq vertico-multiform-commands
        '((consult-ripgrep buffer)
          (consult-line buffer)
          (imenu buffer)
          (consult-buffer buffer)
          (my-consult-ripgrep-with-directory buffer)))

  (vertico-multiform-mode t))



  ;; Do not allow the cursor in the minibuffer prompt
;;  (setq minibuffer-prompt-properties
;;        '(read-only t cursor-intangible t face minibuffer-prompt))
;;  (add-hook 'minibuffer-setup-hook #'cursor-intangible-mode)
  ;; Enable recursive minibuffers
;;  (setq enable-recursive-minibuffers t)
;;  (minibuffer-depth-indicate-mode 1))

;; richer annotations
(use-package marginalia
  :custom
  (marginalia-annotators
   '(marginalia-annotators-heavy marginalia-annotators-light nil))
  :config
  (marginalia-mode))

;;;; Extra Completion Functions
;; provides a unified interface for searching and interacting with various types of data in Emacs, like buffers, files, and recently visited files. It’s designed to work well with other completion frameworks, such as vertico and orderless, and can be used to improve navigation, searching, and finding things within Emacs.
(use-package consult
  :after vertico
  :bind (("C-x b"       . consult-buffer)
         ("C-x C-k C-k" . consult-kmacro)
         ("M-y"         . consult-yank-pop)
         ("M-g g"       . consult-goto-line)
         ("M-g M-g"     . consult-goto-line)
         ("M-g f"       . consult-flymake)
         ("M-g i"       . consult-imenu)
         ("M-s l"       . consult-line)
;;         ("C-s"         . consult-line)
         ("M-s L"       . consult-line-multi)
         ("M-s u"       . consult-focus-lines)
;;         ("M-s g"       . consult-ripgrep)
;;         ("M-s M-g"     . consult-ripgrep)
;;         ("M-m"         . consult-ripgrep)
         ("M-m"         . my-consult-ripgrep-with-directory)
         ("M-s f"       . consult-find)
         ("M-s M-f"     . consult-find)
         ("C-x C-SPC"   . consult-global-mark)
         ("C-x M-:"     . consult-complex-command)
         ("M-X"         . consult-mode-command)
         :map minibuffer-local-map
         ("M-r" . consult-history)
         :map Info-mode-map
         ("M-g i" . consult-info))
  ;; :custom
  ;; (completion-in-region-function #'consult-completion-in-region)
  :config
  (recentf-mode t)
  (remove-hook 'consult-after-jump-hook #'consult-recenter)
  (add-hook 'consult-preview-mode-hook #'consult-preview-at-point-mode))

  
;; designed to enhance the user’s experience with embarking on various actions by making common actions like keybindings and commands more accessible through a consistent interface. It allows users to interact with actions like opening files, buffers, and executing commands in a flexible, customizable way.
(use-package embark
  :bind
  ;; pick some comfortable binding
  (("C-="                     . embark-act)
   ([remap describe-bindings] . embark-bindings)
   :map embark-file-map
   ("C-d" . dragon-drop)
   ;; :map embark-defun-map
   ;; ("M-t" . chatgpt-gen-tests-for-region)
   :map embark-general-map
   ("M-c" . chatgpt-prompt))
   ;; :map embark-region-map
   ;; ("?"   . chatgpt-explain-region)
   ;; ("M-f" . chatgpt-fix-region)
   ;; ("M-f" . chatgpt-fix-region))
  :custom
  (embark-indicators
   '(embark-highlight-indicator
     embark-isearch-highlight-indicator
     embark-default-indicator))
  :init
  ;; Optionally replace the key help with a completing-read interface
  (setq prefix-help-command #'embark-prefix-help-command)
  (setq embark-prompter 'embark-completing-read-prompter)
  :config
  (defun dragon-drop (file)
    (start-process-shell-command "dragon-drop" nil
                                 (concat "dragon-drop " file)))

  ;; Preview any command with M-.
  (keymap-set minibuffer-local-map "M-." 'my-embark-preview)
  (defun my-embark-preview ()
    "Previews candidate in vertico buffer, unless it's a consult command"
    (interactive)
    (unless (bound-and-true-p consult--preview-function)
      (save-selected-window
        (let ((embark-quit-after-action nil))
          (embark-dwim))))))

;; Helpful for editing consult-grep
(use-package wgrep :after embark)

;; Consult users will also want the embark-consult package.
(use-package embark-consult
  :after (:all embark consult)
  :demand t)
  ;; if you want to have consult previews as you move around an
  ;; auto-updating embark collect buffer

(provide 'init-completion)
