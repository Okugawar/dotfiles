;; c.f. https://github.com/mugijiru/.emacs.d/blob/master/inits/20-lsp.el
(el-get-bundle lsp-mode)
(el-get-bundle lsp-ui)
(add-hook 'lsp-mode-hook 'lsp-ui-mode)
(el-get-bundle helm-lsp)
(el-get-bundle lsp-java)
(add-hook 'java-mode-hook #'lsp)
(el-get-bundle lsp-docker)

(add-hook 'go-mode-hook #'lsp)

(custom-set-variables
 '(lsp-diagnostics-provider :flycheck)
 '(lsp-ui-doc-show-with-cursor t)
 '(lsp-ui-doc-alignment 'window))

;; Patch
;; https://github.com/emacs-lsp/lsp-ui/issues/184#issuecomment-1158057166
(with-eval-after-load 'lsp-ui-sideline
  (defun lsp-ui-sideline--align (&rest lengths)
    "Align sideline string by LENGTHS from the right of the window."
    (cons (+ (apply '+ lengths)
             (if (display-graphic-p) 1 2))
          'width))
  (defun lsp-ui-sideline--compute-height () nil))

;; -*- lexical-binding: t; -*-
(setq lsp-print-io nil)
(setq lsp-trace nil)
(setq lsp-print-performance nil)
(setq lsp-auto-guess-root t)
(setq lsp-document-sync-method 'incremental)
(setq lsp-response-timeout 5)
(setq lsp-enable-snippet nil)

(setq read-process-output-max (* 1024 1024)) ;; 1mb
(setq gc-cons-threshold 100000000)

;; lsp-ui config
(setq lsp-ui-doc-enable t)
(setq lsp-ui-doc-header t)
(setq lsp-ui-doc-include-signature t)
(setq lsp-ui-doc-max-width 150)
(setq lsp-ui-doc-max-height 30)
(setq lsp-ui-peek-enable t)
(add-hook 'lsp-mode-hook 'lsp-ui-mode)

(use-package lsp-mode
  :custom ((lsp-inhibit-message t)
	     (lsp-message-project-root-warning t)
	     (create-lockfiles nil))
  :commands (lsp lsp-deferred)
  :hook
  (prog-major-mode . lsp-prog-major-mode-enable)
  (js2-mode . lsp-deferred)
  (typescript-mode . lsp-deferred)
  (terraform-mode . lsp-deferred))

(use-package lsp-ui
  :after lsp-mode
  :custom (scroll-margin 0)
  :hook   (lsp-mode . lsp-ui-mode))

(use-package company-lsp
  :after (lsp-mode company yasnippet)
  :defines company-backends
  :functions company-backend-with-yas
  :init (cl-pushnew (company-backend-with-yas 'company-lsp) company-backends))

