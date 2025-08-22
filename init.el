;;; init.el --- Minimal Racket Configuration -*- lexical-binding: t; -*-

;; ==============================
;; Package Management
;; ==============================
(require 'package)
(setq package-archives
      '(("melpa" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
        ("gnu"   . "https://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")))
(unless package--initialized
  (package-initialize))
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)
(setq use-package-always-ensure t)

;; ==============================
;; Basic UI Cleanup
;; ==============================
(tool-bar-mode -1)
(scroll-bar-mode -1)
(setq inhibit-startup-message t)

;; ==============================
;; Basic Settings
;; ==============================
(setq-default indent-tabs-mode nil)
(global-display-line-numbers-mode t)
(show-paren-mode 1)
(setq show-paren-delay 0
      show-paren-style 'mixed)
(electric-pair-mode 1)
(setq-default cursor-type 'bar)
(blink-cursor-mode 0)

;; ==============================
;; Essential Packages
;; ==============================
(use-package magit
  :bind ("C-x g" . magit-status))

(use-package which-key
  :config
  (which-key-mode 1))

(use-package paredit
  :hook (racket-mode . paredit-mode))

(use-package racket-mode
  :mode ("\\.rkt\\'" . racket-mode)
  :config
  (setq racket-mode-pretty-lambda t)
  :hook (racket-mode . racket-xp-mode)
  :bind (:map racket-mode-map
              ("C-c C-r" . racket-send-region)
              ("C-c C-z" . racket-repl)))

;; ==============================
;; Key Bindings
;; ==============================
(global-set-key (kbd "C-c c") 'comment-or-uncomment-region)

;;; init.el ends here;;; init.el --- Minimal Racket Configuration -*- lexical-binding: t; -*-

;; ==============================
;; Package Management
;; ==============================
(require 'package)
(setq package-archives
      '(("melpa" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
        ("gnu"   . "https://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")))
(unless package--initialized
  (package-initialize))
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)
(setq use-package-always-ensure t)

;; ==============================
;; Basic UI Cleanup
;; ==============================
(tool-bar-mode -1)
(scroll-bar-mode -1)
(setq inhibit-startup-message t)

;; ==============================
;; Basic Settings
;; ==============================
(setq-default indent-tabs-mode nil)
(global-display-line-numbers-mode t)
(show-paren-mode 1)
(setq show-paren-delay 0
      show-paren-style 'mixed)
(electric-pair-mode 1)
(setq-default cursor-type 'bar)
(blink-cursor-mode 0)

;; ==============================
;; Essential Packages
;; ==============================
(use-package which-key
  :config
  (which-key-mode 1))

(use-package paredit
  :hook (racket-mode . paredit-mode))

(use-package racket-mode
  :mode ("\\.rkt\\'" . racket-mode)
  :config
  (setq racket-mode-pretty-lambda t)
  :hook (racket-mode . racket-xp-mode)
  :bind (:map racket-mode-map
              ("C-c C-r" . racket-send-region)
              ("C-c C-z" . racket-repl)))

;; ==============================
;; Key Bindings
;; ==============================
(global-set-key (kbd "C-c c") 'comment-line)

;;; init.el ends here
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
