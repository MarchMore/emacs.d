;;;; Emacs repo设置
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
			 ("melpa" . "http://melpa.milkbox.net/packages/")))

;;;; 设置默认安装包列表
(defvar my-default-packages '(auctex
			      auto-complete)
  "setting default package to be installed.")
(dolist (package my-default-packages)
  (when (not (package-installed-p package))
    (package-install package))

;;;; 加载全部已安装package
(setq package-enable-at-startup nil)
(package-initialize)

(provide 'init-elpa)

