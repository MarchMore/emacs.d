(require 'ecb)

;; 系统自动生成
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ecb-options-version "2.40"))

;; ecb配置，一键开关
(setq stack-trace-on-error t)
(setq ecb-tip-of-the-day nil)
(defun my-ecb-active-or-deactive ()
  (interactive)
  (if ecb-minor-mode
      (ecb-deactivate)
    (ecb-activate)
    ))
(global-set-key (kbd "<f2>") 'my-ecb-active-or-deactive)


(provide 'init-ecb)
