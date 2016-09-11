;; Remove menu bars, toolbars and scroll bar.
(when (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(when (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(when (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

(add-to-list 'default-frame-alist '(fullscreen . maximized)) ; run emacs maximazed

(split-window-right) ; split on startup
(setq visible-bell 1) ; no more annoying beeps, show visible sign

(setq auto-save-default nil) ; disable auto-save
