;;;; Emacs repo设置
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
			 ("melpa" . "http://melpa.milkbox.net/packages/")))

;;;; 加载全部已安装package
(setq package-enable-at-startup nil)
(package-initialize)

;;;; 设置默认安装包列表
(unless package-archive-contents
  (package-refresh-contents))
(defvar my-default-packages '(autopair
			      auto-complete
			      auto-complete-clang-async
			      ecb
			      popup          ; auto-complete依赖
			      dired+
			      disaster
			      js2-mode
			      smart-compile
			      smex
			      switch-window  ; switch-window
			      yasnippet
			      )
  "setting default packages to be installed.")
(dolist (package my-default-packages)
  (unless (package-installed-p package)
    (package-install package)))


(provide 'init-elpa)

