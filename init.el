(package-initialize)

(require 'cask)
(cask-initialize)

(require 'use-package)
(use-package dired
  :init
  (add-hook 'dired-mode-hook 'dired-hide-details-mode)
  :bind (:map dired-mode-map
              ("i" . dired-subtree-toggle)))

(use-package expand-region
  :bind (
    ("C-c e" . er/expand-region)))

;for activate another program on emacs
(use-package exec-path-from-shell
  :config
  (exec-path-from-shell-initialize))

(use-package flycheck
  :config
  (global-flycheck-mode))

(use-package pallet
  :config
  (pallet-mode t))

(use-package projectile
  :init
  (setq projectile-known-projects-file (locate-user-emacs-file "tmp/projectile-bookmarks.eld"))
  :bind
  ("C-x C-f" . projectile-find-file)
  :config
  (projectile-mode))

(use-package saveplace
  :init
  (setq save-place-file (locate-user-emacs-file "tmp/places"))
  :config
  (save-place-mode 1))

(use-package smartparens-config
  :config
  (smartparens-global-mode t))

(use-package smex
  :init
  (setq smex-save-file (locate-user-emacs-file "tmp/smex-items"))
  :config
  (smex-initialize)
  :bind (
    ("M-x" . smex)))

(use-package yasnippet
  :config
  (yas-global-mode t))

(use-package company
  :init
  (setq company-idle-delay 0)
  (setq company-minimum-prefix-length 1)
  :config
  (global-company-mode t))

(use-package dired-subtree
  :init
  (setq dired-subtree-use-background nil))

(use-package golden-ratio
  :init
  (setq golden-ratio-auto-scale t)
  :config
  (golden-ratio-mode t))

(use-package iflipb
  :init
  (setq iflipb-ignore-buffers nil)
  :bind (
    ("M-h" . iflipb-next-buffer)
    ("M-H" . iflipb-previous-buffer)))

(use-package smooth-scrolling        
  :init
  (setq smooth-scroll-margin 1)      
  :config
  (smooth-scrolling-mode t))

(setq create-lockfiles nil)
(setq make-backup-files nil)
(setq auto-save-default nil)
(setq auto-save-list-file-prefix nil)
(global-auto-revert-mode t)
(setq confirm-kill-emacs 'y-or-n-p)
(setq debug-on-error t)
(fset 'yes-or-no-p 'y-or-n-p)
(menu-bar-mode -1)
(save-place-mode t)
(setq custom-file (locate-user-emacs-file "tmp/custom.el"))
(setq suggest-key-bindings t)
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
(setq-default truncate-lines t)
(setq-default inhibit-startup-screen t)
(setq-default inhibit-splash-screen t)
(global-linum-mode t)
