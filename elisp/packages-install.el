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
  (push '(company-capf :with company-yasnippet
		       company-dabbrev-code
		       company-dabbrev
		       company-keywords
		       company-files) company-backends)
  :hook
  ((after-init . global-company-mode)))
(use-package company-box
  :after company
  :diminish
  :config
  :hook (company-mode . company-box-mode))
(use-package lsp-mode
  :defer t
  :hook ((lsp-mode . lsp-enable-which-key-integration))
  :init
  (setq lsp-keymap-prefix "C-c l")
  (setq lsp-prefer-capf t)
  (setq lsp-enable-snippet t)
  (setq lsp-enable-completion-at-point t)
  (setq lsp-keep-workspace-alive nil)
  (setq lsp-enable-file-watchers nil)
  (setq lsp-enable-semantic-highlighting nil)
  (setq lsp-enable-symbol-highlighting nil)
  (setq lsp-enable-text-document-color nil)
  (setq lsp-enable-folding nil)
  (setq lsp-enable-indentation nil)
  (setq lsp-enable-on-type-formatting nil)
  (add-hook 'lsp-completion-mode-hook (lambda ()
					(when lsp-completion-mode
					  (set (make-local-variable 'company-backends)
					       (remq 'company-capf company-backends)))))
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
