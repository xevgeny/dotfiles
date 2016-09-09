(require 'helm-config)
(require 'projectile)
(require 'helm-projectile)

;; Helm settings
(helm-mode 1)
(global-set-key (kbd "M-x") 'helm-M-x)
(setq helm-split-window-in-side-p t) ; helm split window

(projectile-global-mode) ; enable projectile mode
(ido-mode t)             ; interactively-do mode
(show-paren-mode)        ; highlight parenthesis

;; Autocomplete
(ac-config-default)
(global-auto-complete-mode t)
(dolist (m '(dockerfile-mode 
	     markdown-mode))
  (add-to-list 'ac-modes m))
(global-set-key (kbd "C-c a")  'auto-complete) ; trigger autocomplete

;; Theme
(load-theme 'dracula t)

;; Emacs
(global-set-key (kbd "C-x f") 'find-file) ; find file

(global-set-key (kbd "C-c i r") 'indent-region)
(global-set-key (kbd "C-c i s") 'indent-sexp)

;; Windmoves
(global-set-key (kbd "C-c <left>")  'windmove-left)
(global-set-key (kbd "C-c <right>") 'windmove-right)
(global-set-key (kbd "C-c <up>")    'windmove-up)
(global-set-key (kbd "C-c <down>")  'windmove-down)

;; Helm
(global-set-key (kbd "C-c o") 'helm-projectile-find-file) ; find file in project
(global-set-key (kbd "C-c f") 'helm-do-ag-project-root)   ; find in files
(global-set-key (kbd "C-c s") 'helm-projectile-switch-project)
(global-set-key (kbd "C-c b") 'helm-buffers-list)
(global-set-key (kbd "C-c r") 'helm-recentf)

;; Window
(global-set-key (kbd "C-c w v") 'split-window-horizontally)
(global-set-key (kbd "C-c w h") 'split-window-vertically)

;; Git
(global-set-key (kbd "C-c g r") 'vc-revert-buffer)
(global-set-key (kbd "C-c g a") 'vc-annotate)
(global-set-key (kbd "C-c g d") 'magit-diff)
(global-set-key (kbd "C-c g b") 'magit-blame)

;; paredit
(global-set-key (kbd "<A-M-right>") 'paredit-forward-slurp-sexp)
(global-set-key (kbd "<A-M-left>")  'paredit-backward-slurp-sexp)

(global-set-key (kbd "<A-M-down>") 'paredit-forward-barf-sexp)
(global-set-key (kbd "<A-M-up>")   'paredit-backward-barf-sexp)

(global-set-key (kbd "C-c p f") 'paredit-splice-sexp-killing-forward)
(global-set-key (kbd "C-c p b") 'paredit-splice-sexp-killing-backward)

(global-set-key (kbd "C-c w (") 'paredit-wrap-round)
(global-set-key (kbd "C-c w <") 'paredit-wrap-angled)
(global-set-key (kbd "C-c w [") 'paredit-wrap-square)
(global-set-key (kbd "C-c w {") 'paredit-wrap-curly)

(global-set-key (kbd "<M-right>") 'paredit-forward)
(global-set-key (kbd "<M-left>") 'paredit-backward)

(global-set-key (kbd "C-c p u") 'paredit-splice-sexp) ; unwrap sexp

;; Neotree
(global-set-key (kbd "C-c e") 'neotree-toggle)
;; Every time when the neotree window is opened, let it find current file and jump to node.
(setq neo-smart-open t)
