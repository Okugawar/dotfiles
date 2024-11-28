(require 'go-mode)
(add-hook 'go-mode-hook #'lsp)

;; (add-to-list 'auto-mode-alist '("\\.go\\'"  . go-mode))

;; Goのパスを通す
(add-to-list 'exec-path (expand-file-name "$GOROOT"))
(add-to-list 'exec-path (expand-file-name "$GOPATH/bin/"))

(defun go-mode-omnibus ()
  ;; Go code formatting by goimports
  (setq gofmt-command "goimports")
  (add-hook 'before-save-hook 'gofmt-before-save)
  ;; Customize compile command to run go build
  (if (not (string-match "go" compile-command))
      (set (make-local-variable 'compile-command)
           "go build -v && go test -v && go vet"))
  (setq indent-tabs-mode nil)    ; タブを利用
  (setq c-basic-offset 4)    ; tabサイズを4にする
  (setq tab-width 4)
  )
(add-hook 'go-mode-hook 'go-mode-omnibus)
