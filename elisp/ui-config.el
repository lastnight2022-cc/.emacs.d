(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(setq display-line-numbers-type 'relative)
(global-display-line-numbers-mode t)
(setq inhibit-startup-screen t)
;; 设置nerd font 字体
(set-frame-font "DejaVuSansMono Nerd Font Mono-12" nil t)
;; 关闭备份文件
(setq make-backup-files nil)
(electric-pair-mode t)
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)
(setq gc-cons-threshold most-positive-fixnum)

(defalias 'yes-or-no 'y-or-n-p)

(provide 'ui-config)
