;;; This file bootstraps the configuration, which is divided into
;;; a number of other files.

(let ((minver 23))
  (unless (>= emacs-major-version minver)
    (error "Your Emacs is too old -- this config requires v%s or higher" minver)))

(add-to-list 'load-path (expand-file-name "site-lisp" user-emacs-directory))


(require 'init-misc)
(require 'init-elpa)
(require 'init-org)
(require 'init-cc)
(require 'init-auto-complete)

