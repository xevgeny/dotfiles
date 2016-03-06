;; Remove menu bars, toolbars and scroll bar.
(when (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(when (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(when (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; Run emacs maximazed
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; Completion list window http://stackoverflow.com/questions/900372/in-emacs-how-do-i-change-the-minibuffer-completion-list-window
(add-to-list 'special-display-buffer-names '("*Completions*" my-display-completions))

(defun my-display-completions (buf)
  "put the *completions* buffer in the right spot"
  (let ((windows (delete (minibuffer-window) (window-list))))
    (if (eq 1 (length windows))
      (progn 
	(select-window (car windows))
	(split-window-vertically)))
    (let ((target-window (window-at 0 (- (frame-height) 2)))
	  (pop-up-windows t))
      (set-window-buffer target-window buf)
      target-window)))
