;; Much of this has been shamelessly copied from
;; https://github.com/magnars/.emacs.d/

;; No splash screen please ... jeez
(setq inhibit-startup-message t)

;; Set path to dependencies
(setq site-lisp-dir
      (expand-file-name "site-lisp" user-emacs-directory))

(setq settings-dir
      (expand-file-name "settings" user-emacs-directory))

;; Set up load path
(add-to-list 'load-path settings-dir)
(add-to-list 'load-path site-lisp-dir)
(add-to-list 'load-path (expand-file-name "elpa/yasnippet-20160801.1142" user-emacs-directory))

;; Keep emacs Custom-settings in separate file
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file)

;; Set up appearance early
(require 'appearance)

;; Settings for currently logged in user
(setq user-settings-dir
      (concat user-emacs-directory "users/" user-login-name))
(add-to-list 'load-path user-settings-dir)

;; Add external projects to load path
(dolist (project (directory-files site-lisp-dir t "\\w+"))
  (when (file-directory-p project)
    (add-to-list 'load-path project)))

;; Write backup files to own directory
(setq backup-directory-alist
      `(("." . ,(expand-file-name
                 (concat user-emacs-directory "backups")))))

;; Make backups of files, even when they're in version control
(setq vc-make-backup-files t)

;; Are we on a mac?
(setq is-mac (equal system-type 'darwin))

;; Setup packages
(require 'setup-package)

(load "/Users/pcardune/.opam/system/share/emacs/site-lisp/tuareg-site-file")
(let ((opam-share (ignore-errors (car (process-lines "opam" "config" "var"
                                                     "share")))))
  (when (and opam-share (file-directory-p opam-share))
    ;; Register Merlin
    (add-to-list 'load-path (expand-file-name "emacs/site-lisp" opam-share))
    (autoload 'merlin-mode "merlin" nil t nil)
    ;; Automatically start it in OCaml buffers
    (add-hook 'tuareg-mode-hook 'merlin-mode t)
    (add-hook 'caml-mode-hook 'merlin-mode t)
    ;; Use opam switch to lookup ocamlmerlin binary
    (setq merlin-command 'opam)))

;; Install extensions if they're missing
(defun init--install-packages ()
  (packages-install
   '(magit
     better-defaults
     project-explorer
     flx
     flx-ido
     projectile
     rainbow-mode
     auto-complete
     flycheck
     web-mode
     markdown-mode
     yaml-mode
     smart-mode-line
     multi-term
     cheatsheet
     guide-key
     discover-my-major
     less-css-mode
     json-mode
     groovy-mode
     scss-mode
     haml-mode
     yasnippet
     )))

(condition-case nil
    (init--install-packages)
  (error
   (package-refresh-contents)
   (init--install-packages)))

;; Setup environment variables from the user's shell.
(when is-mac
  (require-package 'exec-path-from-shell)
  (exec-path-from-shell-initialize))

;; Setup extensions
(eval-after-load 'auto-complete-config '(require 'setup-auto-complete-config))
;(add-hook 'after-init-hook #'global-flycheck-mode)
(eval-after-load 'flycheck '(require 'setup-flycheck-mode))
(eval-after-load 'web-mode '(require 'setup-web-mode))
(eval-after-load 'shell '(require 'setup-shell))
(eval-after-load 'cheatsheet '(require 'setup-cheatsheet))
(eval-after-load 'guide-key '(require 'setup-guide-key))
(eval-after-load 'yasnippet '(require 'setup-yasnippet))
(require 'js2-mode)

;; Font lock dash.el
(eval-after-load "dash" '(dash-enable-font-lock))

;; enable smart-mode-line to get nice looking modes
(sml/setup)

;; All my custom functions
(require 'custom-functions)

;; Setup key bindings
(require 'key-bindings)

;; Map files to modes
(require 'mode-mappings)

;; delete trailing whitespace on save
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; turn on projectile mode
(require 'projectile)
(projectile-global-mode)

;; Conclude init by setting up specifics for the current user
(when (file-exists-p user-settings-dir)
  (mapc 'load (directory-files user-settings-dir nil "^[^#].*el$")))

(defun reload () "Reloads .emacs interactively."
(interactive)
(load "~/.emacs.d/init.el"))
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
