(require 'cc-mode)

;; Stroustrup风格
(add-hook 'c-mode-hook
	  '(lambda ()
	     (c-set-style "Stroustrup")))
(add-hook 'c++-mode-hook
	  '(lambda ()
	     (c-set-style "Stroustrup")))

;; C/C++基本键绑定配置
(global-set-key [f6] 'gdb)              ;f6调试
(global-set-key [f7] 'gdb-many-windows) ;f7启用gdb多窗口功能

;; 汇编光标所在位置代码
(require 'disaster)
(define-key c-mode-base-map (kbd "C-c d") 'disaster)



(provide 'init-cc)
 
