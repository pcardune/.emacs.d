(require 'flycheck-flow)

(flycheck-add-mode 'javascript-eslint 'js2-jsx-mode)
(flycheck-add-mode 'javascript-eslint 'js2-mode)

;; this is less than ideal. I really shouldn't be using web-mode
;; for editing javascript. oh well.
(flycheck-add-mode 'javascript-eslint 'web-mode)
(flycheck-add-mode 'javascript-flow 'web-mode)

(flycheck-add-next-checker 'javascript-eslint '(t . javascript-flow))



(defun call-process-on-buffer-to-string (command)
  (with-output-to-string
      (call-process-region (point-min) (point-max) shell-file-name nil standard-output nil shell-command-switch command)))


(defun flow-type ()
  (interactive)
  (let* ((info (ignore-errors (json-read-from-string
                (call-process-on-buffer-to-string
                   (format "%s type-at-pos --json  %d %d" flycheck-javascript-flow-executable (line-number-at-pos) (current-column))))))
         (type (cdr (assoc 'type info))))
    (princ info)
    (if (not (string-match type ".*unknown.*"))
        (message (concat "flowtype: " type)))))

(defun flow-pragma-exists ()
  (save-excursion
    (save-match-data
      (goto-char (point-min))
      (not (null (search-forward "@flow" 200 t))))))

(defun flow-mode-hook ()
  (when (flow-pragma-exists)
    (run-with-idle-timer 0.5 t 'flow-type)))


(defun my/use-eslint-from-node-modules ()
  (let* ((root (locate-dominating-file
                (or (buffer-file-name) default-directory)
                "node_modules"))
         (eslint (and root
                      (expand-file-name "node_modules/eslint/bin/eslint.js"
                                        root)))
         (flow-bin (and root
                        (expand-file-name "node_modules/.bin/flow"
                                          root)))
         (flow-config (locate-dominating-file
                (or (buffer-file-name) default-directory)
                ".flowconfig"))
         )
    (unless (and flow-config (file-exists-p flow-config))
      (setq-local flycheck-disabled-checkers '(javascript-flow))
      (message "Disabling javascript-flow checker: %s" flow-config))
;    (when (and flow-config (file-exists-p flow-config) (file-executable-p flow-bin))
;      (message "Turning on flow-mode-hook")
;      (flow-mode-hook)
;      (setq-local flycheck-javascript-flow-executable flow-bin))
    (when (file-executable-p eslint)
      (setq-local flycheck-javascript-eslint-executable eslint)))
  )

(add-hook 'flycheck-mode-hook #'my/use-eslint-from-node-modules)

(provide 'setup-flycheck-mode)
