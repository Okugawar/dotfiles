;; init再読み込み
(global-set-key [f12] 'eval-buffer)

;; フォントサイズ
(global-set-key (kbd "C-<wheel-up>")   '(lambda() (interactive) (text-scale-increase 1)))
(global-set-key (kbd "C-=")            '(lambda() (interactive) (text-scale-increase 1)))
(global-set-key (kbd "C-<wheel-down>") '(lambda() (interactive) (text-scale-decrease 1)))
(global-set-key (kbd "C--")            '(lambda() (interactive) (text-scale-decrease 1)))
(global-set-key (kbd "M-0") '(lambda() (interactive) (text-scale-set 0)))


