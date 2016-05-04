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
;; Find in project files
(global-set-key (kbd "C-c f") 'helm-do-ag-project-root)
;; Switch project
(global-set-key (kbd "C-c s") 'helm-projectile-switch-project)
;; Buffers list
(global-set-key (kbd "C-c b") 'helm-buffers-list)

;; Window
(global-set-key (kbd "C-c w v") 'split-window-horizontally)
(global-set-key (kbd "C-c w h") 'split-window-vertically)

;; Git
(global-set-key (kbd "C-c g r") 'vc-revert-buffer)
(global-set-key (kbd "C-c g a") 'vc-annotate)
(global-set-key (kbd "C-c g d") 'magit-diff)

;; Neotree
(global-set-key [f8] 'neotree-toggle)
;; Every time when the neotree window is opened, let it find current file and jump to node.
(setq neo-smart-open t)
;; When running ‘projectile-switch-project’ ‘neotree’ will change root automatically
;; (setq projectile-switch-project-action 'neotree-projectile-action)

;; Helm split window
(setq helm-split-window-in-side-p t)
