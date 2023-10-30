;;全局配置

;; 设置nerd font 字体
(set-frame-font "DejaVuSansMono Nerd Font Mono-12" nil t)
;; 关闭备份文件
(setq make-backup-files nil)
(add-to-list 'load-path "~/.emacs.d/elisp/")
(require 'packages-install)
(require 'shell-init)
(require 'themes)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(kanagawa-theme use-package restart-emacs exec-path-from-shell)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
