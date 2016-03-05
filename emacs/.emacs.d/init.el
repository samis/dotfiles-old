(add-to-list 'load-path "~/.emacs.d/lisp")
(require 'init-loader)
(setq my-packages '(el-get monokai-theme markdown-mode magit undo-tree unicode-fonts spaceline info+ linkd yaml-mode geiser matrix-client sr-speedbar org-mode csv-mode better-defaults pos-tip company-mode company-quickhelp smex ido-ubiquitous diminish))
(init-loader-load "~/.emacs.d/init")
(setq inhibit-startup-screen t)
(add-hook 'after-make-frame-functions 'set-emoji-font)
(global-auto-revert-mode)
(setq vc-follow-symlinks t)
(global-linum-mode t)
(cua-mode 1)
(setq custom-file "~/.emacs.d/configuration/init-customize.el")
(load custom-file)
(add-hook 'eshell-mode-hook 'use-ohsnapu)
(add-hook 'term-mode-hook 'use-ohsnapu)
(ensure-server-is-running)
(global-visual-line-mode)
(setq ido-use-filename-at-point 'guess)
(setq ido-use-virtual-buffers t)
(winner-mode 1)
