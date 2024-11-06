(require 'use-package)

(use-package tabbar
  :load-path
  "~/.emacs.d/lisp/tabbar"
  :init
  (require 'tabbar)
  :config
  (defun tabbar-buffer-groups ()
    (list
     (cond
      ((string-equal "*" (substring (buffer-name) 0 1))
       "Emacs Buffer"
       )
      ((eq major-mode 'dired-mode)
       "Dired"
       )
      (t
       "User Buffer"
       )
     ))
    )
  (setq tabbar-buffer-groups-function 'tabbar-buffer-groups)
  (tabbar-mode)
  )
  
(use-package markdown-mode
  :load-path "~/.emacs.d/markdown-mode"
  :mode
  ("README\\.md\\'" . gfm-mode)
  ("\\.\\(?:md\\|markdown\\|mkd\\|mdown\\|mkdn\\|mdwn\\)\\'" . markdown-mode)
  :init (setq markdown-command "multimarkdown")
  )

(use-package neotree
  :load-path "~/.emacs.d/lisp/neotree"
  :bind
  ([f8] . 'neotree-toggle)
  )

;;(use-package modus-themes
;;  :load-path "~/.emacs.d/lisp/modus-themes"
;;  :init
;;  (require 'modus-themes)
;;  (load-theme 'modus-vivendi-tinted :no-confirm)
;;  )



(provide 'init-package)
