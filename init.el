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
  :config
  (projectile-mode))

(use-package saveplace
  :init
  (setq save-place-file (locate-user-emacs-file "tmp/places"))
  :config
  (save-place-mode 1))

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
