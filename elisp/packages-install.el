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
(use-package ace-window
  :bind (("M-o" . 'ace-window)))
(use-package amx)
(use-package anzu)
(use-package company
  :hook 'after-init-hook 'global-company-mode)


(use-package lsp-mode
  :init
  (setq lsp-keymap-prefix "C-c l")
  :hook ((lsp-mode . lsp-enable-which-key-integration))
  :commands lsp)
(use-package lsp-ui :commands lsp-ui-mode)
(use-package helm-lsp :commands helm-lsp-workspace-symbol)
(use-package dap-mode)
(use-package flycheck
  :hook (after-init . global-flycheck-mode))
(use-package neotree)
(use-package super-save)
(use-package which-key
  :config
  (which-key-mode))
(use-package smart-compile)
(use-package crux
  :bind (("C-a" . crux-move-beginning-of-line)
	 ("C-c ^" . crux-top-join-line)
	 ("C-x ," . crux-find-user-init-file)
	 ("C-s-d" . crux-duplicate-current-line-or-region)
	 ("C-s-k" . crux-smart-kill-line)))
(use-package rainbow-delimiters)
(add-hook 'foo-mode-hook #'rainbow-delimiters-mode)
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

(provide 'packages-install)
