(add-hook 'after-init-hook #'global-flycheck-mode)
(flycheck-add-mode 'javascript-eslint 'js2-jsx-mode)
(flycheck-add-mode 'javascript-eslint 'js2-mode)

;; this is less than ideal. I really shouldn't be using web-mode
;; for editing javascript. oh well.
(flycheck-add-mode 'javascript-eslint 'web-mode)
(provide 'setup-flycheck-mode)
