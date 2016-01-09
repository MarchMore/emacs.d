;;; This file bootstraps the configuration, which is divided into
;;; a number of other files.

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

