
;; yaml-mode files
(add-to-list 'auto-mode-alist '("\\.\\(yml\\|yaml\\)\\'" . yaml-mode))

;; less-mode files
(add-to-list 'auto-mode-alist '("\\.less\\'" . less-css-mode))

;; less-mode files
(add-to-list 'auto-mode-alist '("\\.json\\'" . json-mode))

;; groovy-mode files
(add-to-list 'auto-mode-alist '("\\.groovy\\'" . groovy-mode))

;; xml-mode files
(add-to-list 'auto-mode-alist '("\\.xml\\'" . xml-mode))

;; scss-mode files
(add-to-list 'auto-mode-alist '("\\.scss\\'" . scss-mode))

;; web-mode files
(add-to-list 'auto-mode-alist '("\\.gsp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.pt\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.js\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsx\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.es6\\'" . web-mode))
(setq web-mode-content-types-alist
      '(("jsx" . "\\.js[x]?\\'")
        ("jsx" . "\\.es6\\'")))

(provide 'mode-mappings)
