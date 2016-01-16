; Emacs entry point 
(load "~/.emacs.d/custom/load-packages.el")

; Odered launch
(add-hook 'after-init-hook '(lambda ()
  (load "~/.emacs.d/custom/no-externals.el")
  (load "~/.emacs.d/custom/settings.el")
))
