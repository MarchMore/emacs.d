;;; This file bootstraps the configuration, which is divided into
;;; a number of other files.


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(let ((minver 23))
  (unless (>= emacs-major-version minver)
    (error "Your Emacs is too old -- this config requires v%s or higher" minver)))

;; 自定义配置文件夹
(add-to-list 'load-path (expand-file-name "site-lisp" user-emacs-directory))
(require 'init-benchmarking) ;; Measure startup time


(require 'init-misc)
(require 'init-org)
(require 'init-elpa)
(require 'init-windows)
(require 'init-cc)
(require 'init-js)
(require 'init-ecb)
(require 'init-auto-complete)

