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
(defvar my-default-packages '(auctex
			      autopair
			      auto-complete
			      auto-complete-clang-async
			      dired+
			      disaster
			      ecb
			      exec-path-from-shell
			      js2-mode
			      popup          ; auto-complete依赖
			      smart-compile
			      smex
			      switch-window  ; switch-window
			      yasnippet
			      )
  "setting default packages to be installed.")
(dolist (package my-default-packages)
  (unless (package-installed-p package)
    (package-install package)))

;;;; 特殊包设置
;; Mac OS下设置PATH路径与终端保持一致
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))


(provide 'init-elpa)

