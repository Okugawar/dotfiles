(el-get-bundle yaml-mode)

(defun setup-yaml-mode ()
  "Settings for yaml-mode."
  (interactive)
  (company-mode t)
  (diff-hl-mode t)
  (flycheck-mode t)
  (highlight-indentation-mode t))

(add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))
(add-to-list 'auto-mode-alist '("\\.yaml\\'" . yaml-mode))
(add-hook 'yaml-mode-hook #'setup-yaml-mode)
