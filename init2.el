;; Visual do emacs
(setq inhibit-startup-message t); Remove boas-vindas
(tool-bar-mode -1); Remove ferramentas
(menu-bar-mode -1); Remove menu
(scroll-bar-mode -1); Remove barra de rolagem
(global-display-line-numbers-mode); Coloca numeração nas linhas
(set-face-attribute 'default nil :height 140); Altera o tamanho da fonte
(load-theme 'tango-dark)

;; Utilidades
(electric-pair-mode 1)
(cua-mode)
(global-company-mode)
(c++-mode)

;; Meus atalhos

; Simplificando utilidades comuns
(global-set-key (kbd "C-f") 'find-file)
(global-set-key (kbd "C-M-f") 'find-file-other-window)
(global-set-key (kbd "C-a") 'mark-whole-buffer)
(global-set-key (kbd "M-<down>") 'save-buffer)
(global-set-key (kbd "M-S-<up>") 'kill-emacs)

; Controlam janelas e buffers
(global-set-key (kbd "M-<right>") 'switch-to-next-buffer)
(global-set-key (kbd "M-<left>") 'switch-to-prev-buffer)
(global-set-key (kbd "C-<tab>") 'other-window)
(global-set-key (kbd "M-s-<LEFT>") 'delete-window)
(global-set-key (kbd "M-S-<down>") 'delete-other-windows)
(global-set-key (kbd "M-S-<right>") 'split-window-right)

; Executar o shell
(global-set-key (kbd "M-<up>") 'shell)
