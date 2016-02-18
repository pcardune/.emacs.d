;; move between windows with Shift+arrow
(windmove-default-keybindings)

;; Use Ctrl-c g to go to a line
(global-set-key "\C-cg" 'goto-line)

;; magit key bindings
(global-set-key (kbd "C-x g") 'magit-status)

;; project mode key
(global-set-key (kbd "C-x p o") 'project-explorer-toggle)

(provide 'key-bindings)
