(setq visible-bell t
      font-lock-maximum-decoration t
      color-theme-is-global t
      truncate-partial-width-windows nil)

;; set initial frame size
(add-to-list 'initial-frame-alist '(fullscreen . fullheight))

;; Highlight current line
;; (global-hl-line-mode 1)

(when window-system
  (setq frame-title-format '(buffer-file-name "%f" ("%b")))
  (tooltip-mode -1)
  (blink-cursor-mode -1)
  (set-frame-width (selected-frame) (+ 32 (* 85 2)))
  (set-frame-position nil 0 0))

(provide 'appearance)
