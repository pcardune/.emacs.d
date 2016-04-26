(flycheck-add-mode 'javascript-eslint 'js2-jsx-mode)
(flycheck-add-mode 'javascript-eslint 'js2-mode)

;; this is less than ideal. I really shouldn't be using web-mode
;; for editing javascript. oh well.
(flycheck-add-mode 'javascript-eslint 'web-mode)

(defun my/use-eslint-from-node-modules ()
  (let* ((root (locate-dominating-file
                (or (buffer-file-name) default-directory)
                "node_modules"))
         (eslint (and root
                      (expand-file-name "node_modules/eslint/bin/eslint.js"
                                        root))))
    (when (file-executable-p eslint)
      (setq-local flycheck-javascript-eslint-executable eslint))))

(add-hook 'flycheck-mode-hook #'my/use-eslint-from-node-modules)

(provide 'setup-flycheck-mode)
