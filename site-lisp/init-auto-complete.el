;;;; 标点符号自动补全
(require 'autopair)
(autopair-global-mode t)


;;;; 模板功能
(require 'yasnippet)
(yas-global-mode t)


;;;; auto-complete
(require 'auto-complete-config)
(ac-config-default)             ; 简单的补全

;; c++代码使用clang-async分析补全
(require 'auto-complete-clang-async)
(defun ac-cc-mode-setup ()
  (setq ac-clang-complete-executable "~/.emacs.d/clang-complete")
  (setq ac-sources '(ac-source-clang-async))
  (ac-clang-launch-completion-process)
)
(defun my-ac-config ()
  (add-hook 'c-mode-common-hook 'ac-cc-mode-setup)
  (add-hook 'auto-complete-mode-hook 'ac-common-setup)
  (global-auto-complete-mode t))
(my-ac-config)


(provide 'init-auto-complete)
