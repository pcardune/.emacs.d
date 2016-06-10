(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(auth-source-save-behavior nil)
 '(auto-save-file-name-transforms
   (quote
    (("/Volumes/ps-dev/*" "/tmp" t)
     ("\\`/[^/]*:\\([^/]*/\\)*\\([^/]*\\)\\'" "/var/folders/R8/R86MaxmlEQqTWfkQVWwUerGW47g/-Tmp-/\\2" t))))
 '(bmkp-desktop-jump-save-before-flag t)
 '(bmkp-last-as-first-bookmark-file "/Users/pcardune/.emacs.d/bookmarks")
 '(c-basic-offset 4)
 '(column-number-mode t)
 '(css-indent-offset 2)
 '(custom-enabled-themes (quote (tango-dark)))
 '(custom-safe-themes
   (quote
    ("3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "135bbd2e531f067ed6a25287a47e490ea5ae40b7008211c70385022dbab3ab2a" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" default)))
 '(espresso-indent-level 2)
 '(exec-path
   (quote
    ("/Users/pcardune/.sdkman/candidates/grails/current/bin" "./node_modules/.bin" "/usr/local/bin" "/usr/bin" "/bin" "/usr/sbin" "/sbin" "/usr/local/git/bin" "/Applications/Postgres.app/Contents/Versions/9.4/bin" "/usr/local/Cellar/emacs-mac/emacs-24.5-z-mac-5.13/libexec/emacs/24.5/x86_64-apple-darwin15.0.0" "/Users/pcardune/.nvm/versions/node/v5.0.0/bin")))
 '(fill-column 80)
 '(flycheck-global-modes (quote (js2-mode js2-jsx-mode)))
 '(flycheck-javascript-eslint-executable "~/.nvm/versions/node/v5.0.0/bin/eslint")
 '(grep-find-ignored-directories
   (quote
    ("SCCS" "RCS" "CVS" "MCVS" ".svn" ".git" ".hg" ".bzr" "_MTN" "_darcs" "{arch}" "node_modules" "bower_components" "src-min" "src-min-noconflict")))
 '(grep-find-ignored-files
   (quote
    (".#*" "*.o" "*~" "*.bin" "*.lbin" "*.so" "*.a" "*.ln" "*.blg" "*.bbl" "*.elc" "*.lof" "*.glo" "*.idx" "*.lot" "*.fmt" "*.tfm" "*.class" "*.fas" "*.lib" "*.mem" "*.x86f" "*.sparcf" "*.dfsl" "*.pfsl" "*.d64fsl" "*.p64fsl" "*.lx64fsl" "*.lx32fsl" "*.dx64fsl" "*.dx32fsl" "*.fx64fsl" "*.fx32fsl" "*.sx64fsl" "*.sx32fsl" "*.wx64fsl" "*.wx32fsl" "*.fasl" "*.ufsl" "*.fsl" "*.dxl" "*.lo" "*.la" "*.gmo" "*.mo" "*.toc" "*.aux" "*.cp" "*.fn" "*.ky" "*.pg" "*.tp" "*.vr" "*.cps" "*.fns" "*.kys" "*.pgs" "*.tps" "*.vrs" "*.pyc" "*.pyo" "*.min.js" "*.js.map" "*.min.css")))
 '(hippie-expand-try-functions-list
   (quote
    (try-expand-dabbrev try-complete-file-name-partially try-complete-file-name try-expand-all-abbrevs try-expand-dabbrev try-expand-list try-expand-line try-expand-dabbrev-all-buffers try-expand-dabbrev-from-kill try-complete-lisp-symbol-partially try-complete-lisp-symbol)))
 '(indent-tabs-mode nil)
 '(js-indent-level 2)
 '(js2-auto-indent-flag nil)
 '(js2-basic-offset 2)
 '(js2-enter-indents-newline nil)
 '(js2-mode-show-strict-warnings nil)
 '(js2-rebind-eol-bol-keys nil)
 '(longlines-wrap-follows-window-size t)
 '(magit-branch-arguments nil)
 '(magit-commit-show-diff nil)
 '(menu-bar-mode nil)
 '(nuke-trailing-whitespace-always-major-modes
   (quote
    (web-mode jsx-mode js2-mode html-mode objc-mode ada-mode c++-mode c-mode change-log-mode emacs-lisp-mode fortran-mode latex-mode lisp-interaction-mode lisp-mode makefile-mode nroff-mode perl-mode plain-tex-mode prolog-mode scheme-mode sgml-mode tcl-mode slitex-mode sml-mode texinfo-mode python-mode)) t)
 '(pe/omit-gitignore t)
 '(rst-level-face-base-color "grey")
 '(rst-level-face-base-light 35)
 '(safe-local-variable-values (quote ((Encoding . utf-8))))
 '(save-place t nil (saveplace))
 '(savehist-mode t)
 '(show-trailing-whitespace nil)
 '(tab-width 2)
 '(text-mode-hook (quote (turn-on-auto-fill text-mode-hook-identify)))
 '(tool-bar-mode nil)
 '(typescript-indent-level 2)
 '(uniquify-buffer-name-style (quote forward) nil (uniquify))
 '(web-mode-enable-auto-quoting nil)
 '(yas-global-mode t nil (yasnippet)))


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(font-lock-string-face ((nil (:foreground "Green"))))
 '(highlight-current-line-face ((t (:background "ivory1"))))
 '(pesche-space ((t (:background "light cyan" :foreground "red" :strike-through t))))
 '(pesche-tab ((t (:background "Black"))))
 '(rst-level-1-face ((t (:background "grey35"))) t)
 '(rst-level-2-face ((t (:background "grey28" :overline t :underline t :weight ultra-bold))) t)
 '(rst-level-4-face ((t (:background "grey14" :underline t :weight bold))) t)
 '(term-color-blue ((t (:background "blue2" :foreground "deep sky blue")))))
