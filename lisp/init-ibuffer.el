;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Customize ibuffer and directory name displays for our projectss
;; Set the icon and frame titles %f file name, %b buffer name
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(setq icon-title-format "%b")
(setq frame-title-format "%b - %f")

(use-package ibuffer)
;; And then customize ibuffer
;; Use human readable Size column instead of original one
(define-ibuffer-column size-h
  (:name "Size" :inline t)
  (cond
   ((> (buffer-size) 1000000) (format "%7.3fM" (/ (buffer-size) 1000000.0)))
   ((> (buffer-size) 1000) (format "%7.0fk" (/ (buffer-size) 1000.0)))
   (t (format "%8d" (buffer-size)))))

(setq ibuffer-saved-filter-groups
   (quote
    (("programming-mode"
      ("boulder"
       (filename . "/dev/boulder/"))
      ("platform-example-sql-app"
       (filename . "/dev/platform-example-sql-app/"))
      ("platform-bf-shared-gke-resources"
       (filename . "/dev/platform-bf-shared-gke-resources/"))
      ("bf-integration-core"
       (filename . "/dev/bf-integration-core/"))
      ("content-integration"
       (filename . "/dev/content-integration/"))
      ("terraform/infra/squads/platform"
       (filename . "/dev/terraform/infra/squads/platform"))
      ("terraform/modules"
       (or
        (filename . "/dev/terraform/modules")
        (filename . "/dev/terraform/squads/platform")))
      ("other terraform"
       (filename . "/dev/terraform/"))
      ("Emacs / Lisp"
			 (or
				(used-mode . emacs-lisp-mode)
				(used-mode . elisp-mode)))
      ("Star Buffers"
       (name . "^\\*"))))))
(setq ibuffer-saved-filters
   (quote
    (("bf-terraform"
      ((filename . ".*/dev/terraform/*")))
     ("No Star Files"
      ((not name . "^*$*")))
     ("gnus"
      (or
       (mode . message-mode)
       (mode . mail-mode)
       (mode . gnus-group-mode)
       (mode . gnus-summary-mode)
       (mode . gnus-article-mode)))
     ("programming"
      (or
       (mode . emacs-lisp-mode)
       (mode . cperl-mode)
       (mode . c-mode)
       (mode . go-mode)
       (mode . yaml-mode)
       (mode . json-mode)
       (mode . java-mode)
       (mode . idl-mode)
       (mode . lisp-mode))))))
;; The following code adds a ‘dirname’ format to ibuffer to shorten the filename
;; and show only the directory:

(defvar filename-subs
  '(("~/dev/iam-control-allowances-test/" . "[shield]/")
    ("/$" . "")
    ("~/dev/wanda-api/" . "[wanda]/")))

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
			        (name 45 45 :left)
			        " "
			        my-filename-and-process)
		    (mark modified read-only " "
              (name 70 70 :left) ; change: 30s were originally 18s
              " "
              (size 9 -1 :right)
              " "
              (mode 16 16 :left :elide)
              " " filename-and-process)))

(add-hook 'ibuffer-mode-hook
          (lambda ()
            (ibuffer-switch-to-saved-filter-groups "programming-mode")))

(provide 'init-ibuffer)
