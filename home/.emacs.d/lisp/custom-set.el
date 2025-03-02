(set-frame-font "JetBrains Mono-18")
(setq initial-frame-alist '((top . 10) (left . 20) (width . 200) (height . 50)))
;; (setq-default line-spacing 20)

(setq inhibit-startup-screen t)
;; 关闭滚屏的提示音
(setq ring-bell-function 'ignore)
(setq make-backup-files nil)
(setq auto-save-default nil)
(setq frame-title-format
      '("%S" (buffer-file-name "%f" (dired-directory dired-directory "%b"))))
(global-display-line-numbers-mode t)
;; auto pair 自动完成括号
(electric-pair-mode t)
(scroll-bar-mode 0)
(setq scroll-step 1)
(setq scroll-margin 2)
(setq scroll-conservatively 100000)
(tool-bar-mode 0)

(defalias 'yes-or-no-p 'y-or-n-p)

;;refresh file
(global-set-key [f5] 'revert-buffer)

;; highlight symbol
(global-set-key [f4] 'highlight-symbol-at-point)
(global-set-key [control f4] 'highlight-regexp)
(global-set-key [shift f4] 'unhighlight-regexp)

;; move up/down line
(global-set-key (kbd "M-<up>") 'move-line-up)
(global-set-key (kbd "M-<down>") 'move-line-down)

;; kill all line
(global-set-key (kbd "C-S-k") 'kyle-kill-line)

;; add new line
(global-set-key (kbd "C-<return>") 'kyle-add-new-line-down)
(global-set-key (kbd "M-<return>") 'kyle-add-new-line-up)

;; copy current line
(global-set-key (kbd "C-S-w") 'kyle-copy-line)

;; goto line
(global-set-key (kbd "M-g") 'goto-line)
(provide 'custom-set)
