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

;; The following code adds a ‘dirname’ format to ibuffer to shorten the filename
;; and show only the directory:

(defvar filename-subs
  '(("~/dev/chockstone/" . "[chockstone]/")
    ("/$" . "")
    ("~/dev/spectre-api/" . "[spectre]/")
    ("~/dev/engage-infra/" . "[tf]/")))

(defvar absolute-filename-subs
  '(("/Users/ray/go/src/github.com/treetopllc/" . "[ttc]")
    ("/$" . "")
    ("/Users/ray/go/src/github.com/treetopllc/gonoble/" . "[gonoble]/")
    ("/Users/ray/go/src/github.com/treetopllc/gonoble/ext/cucumber/" . "[go-cuc]/")
    ("/Users/ray/go/src/github.com/treetopllc/collaboratory-www/" . "[collaboratory-www]/")
    ("/Users/ray/go/src/github.com/treetopllc/nobleweb/" . "[nobleweb]/")
    ("/Users/ray/go/src/github.com/treetopllc/noble-go-sdk/" . "[sdk]/")))

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


(provide 'init-ibuffer)