; "Open a multi term and prompt for buffer name right away"
(defun paul-term (buffer-name)
  (interactive "sterminal name: ")
  (multi-term)
  (rename-buffer buffer-name)
  )

(provide 'custom-functions)
