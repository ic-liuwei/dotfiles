(defun move-line-up ()
  "move current line up"
  (interactive)
  (transpose-lines 1)
  (forward-line -2))

(defun move-line-down ()
  "move current line down"
  (interactive)
  (forward-line 1)
  (transpose-lines 1)
  (forward-line -1))

(defun kyle-kill-line ()
  "custom function for kill all line"
  (interactive)
  (move-beginning-of-line nil)
  (kill-line nil)
  (kill-line nil))

(defun kyle-add-new-line-down ()
  (interactive)
  (move-end-of-line nil)
  (newline-and-indent nil)
  )
(defun kyle-add-new-line-up ()
  (interactive)
  (previous-line 1)
  (move-end-of-line nil)
  (newline-and-indent nil)
  )

(defun kyle-copy-line ()
  (interactive)
  (move-beginning-of-line nil)
  (set-mark-command nil)
  (move-end-of-line nil)
  (kill-ring-save)
  )

(defun kyle-copy-line ()
  (interactive)
  (save-excursion
    (back-to-indentation)
    (kill-ring-save
     (point)
     (line-end-position)))
  (message "1 line copied")
  )

(provide 'custom-func)
