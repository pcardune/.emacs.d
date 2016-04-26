;; move between windows with Shift+arrow
(windmove-default-keybindings)

;; Use Ctrl-c g to go to a line
(global-set-key "\C-cg" 'goto-line)

;; magit key bindings
(global-set-key (kbd "C-x g") 'magit-status)
(cheatsheet-add :group "Git"
                :key "C-x g"
                :description "open magit mode")

;; project mode key
(global-set-key (kbd "C-x p o") 'project-explorer-toggle)
(cheatsheet-add :group "Project Explorer"
                :key "C-x p o"
                :description "open project explorer")


;; show cheat sheet
(global-set-key (kbd "C-x c") 'cheatsheet-show)
(cheatsheet-add :group "Cheat sheet"
                :key "C-x c"
                :description "display this cheat sheet")

;; open new terminal
(global-set-key (kbd "C-x t") 'paul-term)
(cheatsheet-add :group "Shell"
                :key "C-x t"
                :description "Open new multi-term")

(provide 'key-bindings)
