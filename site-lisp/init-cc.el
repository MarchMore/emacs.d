;; Stroustrup风格
(add-hook 'c-mode-hook
	  '(lambda ()
	     (c-set-style "Stroustrup")))
(add-hook 'c++-mode-hook
	  '(lambda ()
	     (c-set-style "Stroustrup")))

;; C/C++基本键绑定配置
(global-set-key [f5] 'smart-compile)    ;智能编译
(global-set-key [f6] 'gdb)              ;f6调试
(global-set-key [f7] 'gdb-many-windows) ;f7启用gdb多窗口功能



(provide 'init-cc)
