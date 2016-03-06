(require 'darcula-theme)
(require 'helm-config)
(require 'projectile)
(require 'helm-projectile)
(require 'neotree)
(require 'ido)

;; Helm settings
(helm-mode 1)
(global-set-key (kbd "M-x") 'helm-M-x)

;; IDO-mode
(ido-mode t)

;; Projectile
(projectile-global-mode)

;; Open file in project
(global-set-key (kbd "C-c o") 'helm-projectile-find-file)
;; Find in files
(global-set-key (kbd "C-c f") 'helm-ag)
;; Switch project
(global-set-key (kbd "C-c s") 'helm-projectile-switch-project)

;; Neotree
(global-set-key [f8] 'neotree-toggle)
;; Every time when the neotree window is opened, let it find current file and jump to node.
(setq neo-smart-open t)
;; When running ‘projectile-switch-project’ ‘neotree’ will change root automatically
;; (setq projectile-switch-project-action 'neotree-projectile-action)
