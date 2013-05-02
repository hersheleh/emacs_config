;; add default look up paths for library
(add-to-list 'load-path "~/.emacs.d/site-lisp/mee/")
(add-to-list 'load-path "~/.emacs.d/site-lisp/others/")

;; To prevent modes from using tabs
(add-hook 'after-change-major-mode-hook 
          '(lambda () 
             (setq-default indent-tabs-mode nil)
             (setq c-basic-indent 4)
             (setq tab-width 4)))


;; Mumamo is making emacs 23.3 freak out:
(eval-after-load "bytecomp"
  '(add-to-list 'byte-compile-not-obsolete-vars
																'font-lock-beginning-of-syntax-function))

(eval-after-load "bytecomp"
		'(add-to-list 'byte-compile-not-obsolete-vars
																'font-lock-syntactic-keywords))

;; tramp-compat.el clobbers this variable!
(eval-after-load "tramp-compat"
  '(add-to-list 'byte-compile-not-obsolete-vars
																'font-lock-beginning-of-syntax-function))


;; set font size
(set-face-attribute 'default nil :height 140)


;; change tab to 2 spaces
(setq default-tab-width 1)


;; yaml mode
(add-to-list 'load-path "~/.emacs.d/site-lisp/others/yaml-mode/")
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$". yaml-mode))

;; haml mode
(add-to-list 'load-path "~/.emacs.d/site-lisp/others/haml-mode/")
(require 'haml-mode)

;; django mode
(add-to-list 'load-path "~/.emacs.d/site-lisp/others/python-django.el")
(require 'python-django)


;; Authocomplete Mode
(add-to-list 'load-path "~/.emacs.d/")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d//ac-dict")
(ac-config-default)

;; load color themes and set color theme euphoria
;; (require 'color-theme)
;; (color-theme-initialize)
;; (color-theme-euphoria)



;; interactively do thing mode
(require 'ido)
(ido-mode t)
(setq ido-enable-flex-matching t)

;; enable parenthesis highlighting
(require 'mic-paren)
(paren-activate)


;; Load nxhtml
(autoload 'django-html-mumamo-mode "~/.emacs.d/site-lisp/others/nxhtml/autostart.el")
(setq mumamo-mode-alist
      (append '(("\\.jinja2?$" . django-html-mumamo-mode)) auto-mode-alist))
(setq mumamo-background-colors nil)
(add-to-list 'auto-mode-alist '("\\.jinja2$" . django-html-mumamo-mode))
;;(load "~/.emacs.d/site-lisp/others/nxhtml/autostart.el")


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
 '(ansi-color-names-vector ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#ad7fa8" "#8cc4ff" "#eeeeec"])
 '(custom-enabled-themes (quote (manoj-dark)))
 '(mumamo-chunk-coloring 2))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
