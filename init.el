;; add default look up paths for library
(add-to-list 'load-path "~/.emacs.d/site-lisp/mee/")
(add-to-list 'load-path "~/.emacs.d/site-lisp/others/")


;; load color themes and set color theme euphoria
(require 'color-theme)
(color-theme-initialize)
(color-theme-euphoria)



;; interactively do thing mode
(require 'ido)
(ido-mode t)
(setq ido-enable-flex-matching t)

;; enable parenthesis highlighting
(require 'mic-paren)
(paren-activate)


;; Load nxhtml
;; (load "~/.emacs.d/site-lisp/others/nxhtml/autostart.el")


;; Set key change window to Ctrl-`
(global-set-key  (kbd "C-`") 'other-window)

;; desktop loader
(desktop-load-default)
(desktop-read)

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(mumamo-chunk-coloring 2))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
