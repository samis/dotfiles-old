(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(setq el-get-user-package-directory "~/.emacs.d/configuration")
(set-face-attribute 'default nil :family "Input Mono Compressed" :height 98)
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
(setq my-packages '(el-get monokai-theme markdown-mode ergoemacs-mode magit undo-tree unicode-fonts spaceline))
(setq el-get-packages
      (append my-packages
              (mapcar #'el-get-source-name el-get-sources)))
(el-get 'sync el-get-packages)
(setq vc-follow-symlinks t)
(tool-bar-mode -1)
(global-linum-mode t)
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(mode-line ((t (:background "green" :foreground "black" :box (:line-width 1 :color "#3E3D31" :style unspecified)))))
 '(mode-line-buffer-id ((t (:foreground "black" :weight bold))))
 '(mode-line-inactive ((t (:background "dark green" :foreground "black" :box (:line-width 1 :color "#3E3D31" :style unspecified)))))
 '(powerline-active1 ((t (:background "yellow" :foreground "black"))))
 '(powerline-inactive1 ((t (:background "yellow4" :foreground "black"))))
 '(powerline-inactive2 ((t (:background "dim gray"))))
 '(spaceline-highlight-face ((t (:background "black" :foreground "green" :inherit (quote mode-line)))))
 '(spaceline-modified ((t (:background "red3" :foreground "yellow" :inherit (quote mode-line)))))
 '(spaceline-read-only ((t (:background "black" :foreground "green" :inherit (quote mode-line)))))
 '(spaceline-unmodified ((t (:background "black" :foreground "green" :inherit (quote mode-line))))))
