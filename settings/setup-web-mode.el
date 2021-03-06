
(setq web-mode-content-types-alist
      '(("jsx" . "\\.js[x]?\\'")
        ("jsx" . "\\.es6\\'")))

(defun my-web-mode-hook ()
  "Hooks for Web mode."
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2)

  (local-unset-key (kbd "C-c C-s"))

  (when (>= (string-match "code-dot-org" buffer-file-name) 0)
    (setq web-mode-attr-indent-offset 2))

  (when (>= (string-match "js-interpreter" buffer-file-name) 0)
    (setq prettier-args (quote ("--bracket-spacing" "false" "--trailing-comma" "es5" "--single-quote"))))

  (when (string-suffix-p ".gsp" buffer-file-name)
    (setq web-mode-code-indent-offset 4)
    (setq web-mode-markup-indent-offset 4))
;;  (when (>= (string-match "doorsystem" buffer-file-name) 0)
;;    (setq web-mode-code-indent-offset 4)
;;    (setq web-mode-markup-indent-offset 4))
)

(add-hook 'web-mode-hook 'yas-minor-mode-on)
(add-hook 'web-mode-hook 'flycheck-mode)
(add-hook 'web-mode-hook 'my-web-mode-hook)

(require 'prettier-js)
(setq prettier-target-mode "web-mode")
(add-hook 'web-mode-hook
          (lambda ()
            (add-hook 'before-save-hook 'prettier-before-save)))

(provide 'setup-web-mode)
