;; Visual do emacs
(setq inhibit-startup-message t); Remove boas-vindas
(tool-bar-mode -1); Remove ferramentas
(menu-bar-mode -1); Remove menu
(scroll-bar-mode -1); Remove barra de rolagem
(global-display-line-numbers-mode); Coloca numeração nas linhas
(set-face-attribute 'default nil :height 125); Altera o tamanho da fonte
(load-theme 'tango-dark)

;; Utilidades
(electric-pair-mode 1)
(cua-mode)
(global-company-mode)
(c-mode)
(which-key-mode)

;; Meus atalhos
(global-set-key (kbd "M-f") 'find-file)
(global-set-key (kbd "C-M-f") 'find-file-other-window)
(global-set-key (kbd "C-a") 'mark-whole-buffer)
(global-set-key (kbd "M-k") 'kill-whole-line)
(global-set-key (kbd "M-<down>") 'save-buffer)
(global-set-key (kbd "M-S-<up>") 'kill-emacs)
(global-set-key (kbd "M-\\") 'neotree-toggle)
(global-set-key (kbd "M-~") 'pdf-tools-install)

; Controlam janelas e buffers
(global-set-key (kbd "M-<right>") 'switch-to-next-buffer)
(global-set-key (kbd "M-<left>") 'switch-to-prev-buffer)
(global-set-key (kbd "M-<tab>") 'other-window)
(global-set-key (kbd "M-S-<left>") 'delete-window)
(global-set-key (kbd "M-S-<down>") 'delete-other-windows)
(global-set-key (kbd "M-S-<right>") 'split-window-right)

; Executar o shell
(global-set-key (kbd "M-<up>") 'shell)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(pdf-tools which-key company)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
