;;; enable MELPA Stable and MELPA
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)
;; Don't forget to do M-x package-refresh-contents after changing source

;;; Disable startup screen
(setq inhibit-startup-message t)

;;; Turn off some unneeded UI elements
(menu-bar-mode -1) 
(tool-bar-mode -1)
(scroll-bar-mode -1)

;;; Display line numbers in every buffer
(global-display-line-numbers-mode 1)

;;; theme
(load-theme 'base16-gruvbox-dark-hard t)

;; set custom-file
(setq custom-file (locate-user-emacs-file "custom.el"))

;;; custom load directory for plugin style load
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

;;; disable spellcheck.. it's usually annoying
(defconst *spell-check-support-enabled* nil) ;; Enable with t if you prefer

;;; tabs as spaces
(setq-default indent-tabs-mode nil)

(use-package lsp-mode
  :commands (lsp lsp-deferred)
  :init
  (setq lsp-keymap-prefix "C-c l")
  :config
  (lsp-enable-which-key-integration t))

(require 'init-rust)

