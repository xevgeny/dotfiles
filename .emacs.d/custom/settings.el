; Helm settings
(helm-mode 1)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-c o") 'helm-projectile-find-file)

; Neotree
(global-set-key [f8] 'neotree-toggle)
; Every time when the neotree window is opened, let it find current file and jump to node.
(setq neo-smart-open t)
; When running ‘projectile-switch-project’ ‘neotree’ will change root automatically
(setq projectile-switch-project-action 'neotree-projectile-action)
