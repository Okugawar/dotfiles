(require 'js2-mode)
(add-to-list 'auto-mode-alist '("\\.js\\'"  . js2-mode))

(require 'typescript-mode)
(add-to-list 'auto-mode-alist '("\\.ts\\'"  . typescript-mode))
(add-to-list 'auto-mode-alist '("\\.tsx\\'" . typescript-mode))
