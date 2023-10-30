;;全局配置

;; 设置nerd font 字体
(set-frame-font "DejaVuSansMono Nerd Font Mono-12" nil t)
;; 关闭备份文件
(setq make-backup-files nil)
(add-to-list 'load-path "~/.emacs.d/elisp/")
(require 'packages-install)
(require 'shell-init)


