;; c.f. https://github.com/mugijiru/.emacs.d/blob/master/inits/40-ts.el
(el-get-bundle js2-mode)
(el-get-bundle typescript-mode)
(el-get-bundle prettier-js)
(el-get-bundle tide)

;; (require 'tide)

(custom-set-variables
 '(typescript-indent-level 2)
 '(lsp-typescript-locale "ja")
 '(lsp-inlay-hint-enable t)
 '(lsp-javascript-display-parameter-name-hints t)
 '(lsp-javascript-display-enum-member-value-hints t)
 '(lsp-clients-typescript-max-ts-server-memory 2048)
 '(lsp-disabled-clients '())
 '(lsp-eslint-auto-fix-on-save nil))

(add-hook 'js2-mode-hook '(lambda ()
			    (setq tab-width 4)
			    ) t)

(add-hook 'js2-mode-hook 'prettier-js-mode)

(add-to-list 'auto-mode-alist '("\\.js\\'"  . js2-mode))
(add-to-list 'auto-mode-alist '("\\.jsx\\'"  . js2-mode))

(defun my/ts-mode-hook ()
  ;; (origami-mode 1)
  (company-mode 1)
  ;; (subword-mode 1)
  ;; (copilot-mode 1)
  ;; (turn-on-smartparens-strict-mode)
  (display-line-numbers-mode t)
  (lsp)
  (lsp-ui-mode 1)
  (add-hook 'before-save-hook #'my/ts-mode-auto-fix-hook nil 'local))

(defun my/ts-mode-auto-fix-hook ()
  (when (string-equal (file-name-extension buffer-file-name) "ts")
    (lsp-eslint-apply-all-fixes)))

;; (defun setup-tide-mode ()
;;   "Set up tide mode."
;;   (interactive)
;;   (tide-setup)
;;   (flycheck-mode t)
;;   (setq flycheck-check-syntax-automatically '(save mode-enabled))
;;   (eldoc-mode t))

(use-package typescript-mode
  :ensure t
  :mode ("\\.tsx?'" . typescript-mode)
  :hook
  (my/ts-mode-hook))

(use-package prettier-js
  :ensure t
  :commands (prettier-js-mode prettier-js)
  :hook (typescript-mode . prettier-js-mode))

(setq prettier-js-args '(
  "--trailing-comma" "all"
  "--bracket-spacing" "false"
  ))
