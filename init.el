;;全局配置

;;设置国内镜像站
(setq package-archives '(
			 ("gnu" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
			 ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
			 ("org" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/org/")
			 ))

;; 设置nerd font 字体
;;(set-frame-font "DejaVuSansMono Nerd Font Mono Bold Oblique-12" nil t)
;; 关闭备份文件
(setq make-backup-files nil)

