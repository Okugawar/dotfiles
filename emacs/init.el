(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.milkbox.net/packages/"))
(add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/"))
(package-initialize)


(require 'cl)

(add-to-list 'load-path (locate-user-emacs-file "el-get/el-get"))
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(el-get-bundle init-loader)
;; (el-get-bundle auto-complete)
(el-get-bundle emacs-jp/replace-colorthemes)
(el-get-bundle neotree)
(el-get-bundle helm)
(el-get-bundle exec-path-from-shell)
(el-get-bundle markdown-mode)
(el-get-bundle js2-mode)
(el-get-bundle typescript-mode)
(el-get-bundle flycheck)
(el-get-bundle yaml-mode)
;; (el-get-bundle vue-mode)
;; (el-get-bundle mmm-mode)
;; (el-get-bundle haskell-mode)
;; (el-get-bundle ssass-mode)
(el-get-bundle vue-html-mode)
;; (el-get-bundle proof-general)
(el-get-bundle json-mode)
(el-get-bundle go-mode)		   
(el-get-bundle company-mode/company-mode)
;; (el-get-bundle emacsattic/company-go)

(el-get-bundle emacs-lsp/lsp-mode)
(el-get-bundle emacs-lsp/lsp-ui)
(el-get-bundle emacs-lsp/helm-lsp)
(el-get-bundle emacs-lsp/lsp-java)
(add-hook 'java-mode-hook #'lsp)

(require 'init-loader)
(setq init-loader-show-log-after-init nil)
(init-loader-load "~/.emacs.d/inits")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(desktop-save-mode t)
 '(package-selected-packages '(company-go company-lsp ssass-mode vue-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-preview ((t (:foreground "darkgray" :underline t))))
 '(company-preview-common ((t (:inherit company-preview))))
 '(company-tooltip ((t (:background "lightgray" :foreground "black"))))
 '(company-tooltip-common ((((type x)) (:inherit company-tooltip :weight bold)) (t (:inherit company-tooltip))))
 '(company-tooltip-common-selection ((((type x)) (:inherit company-tooltip-selection :weight bold)) (t (:inherit company-tooltip-selection))))
 '(company-tooltip-selection ((t (:background "steelblue" :foreground "white")))))

