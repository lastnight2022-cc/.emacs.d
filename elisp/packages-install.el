;;设置国内镜像站
(setq package-archives '(("gnu" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
			 ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
			 ("nognu" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/nognu/")
			 ))
(setq package-check-signature nil)
(require 'package)
(unless (bound-and-true-p package--initialized)
  (package-initialize))
(unless package-archive-contents
  (package-refresh-contents))
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(setq use-package-always-ensure t)
(setq use-package-always-defer t)
(setq use-package-always-demand nil)
(setq use-package-expand-minimally t)
(setq use-package-verbose t)
(require 'use-package)

(use-package benchmark-init
  :ensure t
  :demand t
  :config
  (add-hook 'after-init-hook 'benchmark-init/deactivate))

(use-package restart-emacs)
(use-package exec-path-from-shell)
(use-package timu-rouge-theme)
(use-package ace-window)
(use-package amx)
(use-package anzu)
(use-package company
  :config
  (setq company-dabbrev-code-everywhere t
		        company-dabbrev-code-modes t
		        company-dabbrev-code-other-buffers 'all
		        company-dabbrev-downcase nil
		        company-dabbrev-ignore-case t
		        company-dabbrev-other-buffers 'all
		        company-require-match nil
		        company-minimum-prefix-length 1
		        company-show-numbers t
		        company-tooltip-limit 20
		        company-idle-delay 0
		        company-echo-delay 0
		        company-tooltip-offset-display 'scrollbar
		        company-begin-commands '(self-insert-command))
  (push '(company-semantic :with company-yasnippet) company-backends)
  :hook
  ((after-init . global-company-mode)))
(use-package lsp-mode)
(provide 'packages-install)
