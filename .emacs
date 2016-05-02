; Load basic settings first
(load "~/.emacs.d/custom/basics.el")

; Load packages
(load "~/.emacs.d/custom/packages.el")

; Odered launch
(add-hook 'after-init-hook '(lambda ()
  (load "~/.emacs.d/custom/settings.el")
))
