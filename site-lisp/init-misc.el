;; 默认主题
(load-theme 'tango-dark)

;; 默认编码 UTF-8
(setq default-buffer-file-coding-system  'utf-8-unix)

;; 显示列号
(column-number-mode t)

;; 显示时钟
(display-time-mode t)
(setq display-time-24hr-format t) ;时间显示为24h制

;;显示括号匹配
(show-paren-mode t)

;; 设置cursor
;(setq-default cursor-type 'bar) ;竖线
;(setq-default cursor-type 'box) ;方块

;; 以y/n代表yes/no
(fset 'yes-or-no-p 'y-or-n-p)

;; text-mode下自动换行
(add-hook 'text-mode-hook 'turn-on-auto-fill)

;; narrow设置
(put 'narrow-to-region 'disabled nil)

;; 设置ssh编辑远程文件
(setq tramp-default-method "ssh")

;; 单词简写模式
(read-abbrev-file "~/.emacs.d/.abbrev_defs")
(setq-default abbrev-mode t)
(setq save-abbrevs t)

;;;; 全局键绑定
(global-set-key [f3] 'eshell)            ;f3切换到shell模式
(global-set-key [f4] 'speedbar)          ;f4启用speedbar
(global-set-key [f5] 'smart-compile)     ;智能编译
(global-set-key "\C-x\C-b" 'buffer-menu) ;Rebind 'C-x C-b' for 'buffer-menu'

;; ido-mode
(ido-mode t)

;; server-mode
(server-start)

(provide 'init-misc)
