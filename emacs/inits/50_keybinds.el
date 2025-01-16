;; init再読み込み
(global-set-key [f12] 'eval-buffer)

;; backspace
(keyboard-translate ?\C-h ?\C-?)

;; フォントサイズ
(global-set-key (kbd "C-<wheel-up>")   '(lambda() (interactive) (text-scale-increase 1)))
(global-set-key (kbd "C-=")            '(lambda() (interactive) (text-scale-increase 1)))
(global-set-key (kbd "C-<wheel-down>") '(lambda() (interactive) (text-scale-decrease 1)))
(global-set-key (kbd "C--")            '(lambda() (interactive) (text-scale-decrease 1)))
(global-set-key (kbd "M-0") '(lambda() (interactive) (text-scale-set 0)))

;; ウィンドウ移動
(global-set-key (kbd "C-c <left>")  'windmove-left)
(global-set-key (kbd "C-c <down>")  'windmove-down)
(global-set-key (kbd "C-c <up>")    'windmove-up)
(global-set-key (kbd "C-c <right>") 'windmove-right)

;; ファイルリロード
(global-set-key "\M-r" 'revert-buffer-no-confirm)

;; neotree
(global-set-key [f8] 'neotree-toggle)

;; hs-toggle
(global-set-key (kbd "C-c /") 'hs-toggle-hiding)

;; ¥の代わりにバックスラッシュを入力する
(define-key global-map [?¥] [?\\])
