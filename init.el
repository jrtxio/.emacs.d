;; ==============================
;; Minimal Racket configuration
;; ==============================

(require 'package)
(setq package-archives
      '(("melpa" . "https://melpa.org/packages/")
        ("gnu"   . "https://elpa.gnu.org/packages/")))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)
(setq use-package-always-ensure t)

;; ------------------------------
;; Paredit: structured editing
;; ------------------------------
(use-package paredit
  :hook ((emacs-lisp-mode lisp-mode lisp-interaction-mode racket-mode) . paredit-mode))

;; ------------------------------
;; Racket-mode
;; ------------------------------
(use-package racket-mode
  :mode ("\\.rkt\\'" . racket-mode)
  :hook (racket-mode . racket-xp-mode)) ;; enable enhanced features like syntax highlighting and jump

;; ------------------------------
;; Optional: line numbers & spaces
;; ------------------------------
(global-display-line-numbers-mode t)
(setq-default indent-tabs-mode nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
