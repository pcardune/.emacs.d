(defun paul-term (buffer-name)
  "Open a multi term and prompt for buffer name right away"
  (interactive
   (list
    (read-string "Open new terminal (with buffer new name): "
                 (if (string-match-p ":" (buffer-name))
                     (format "%s:" (first (split-string (buffer-name) ":")))
                   ""
                   )
                 nil
                 "foo")
    )
   )
  (multi-term)
  (rename-buffer buffer-name)
  )

(provide 'custom-functions)
