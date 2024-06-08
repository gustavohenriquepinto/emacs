;;Melhorar o visual do Emacs
(setq inhibit-startup-message t); Remove boas-vindas
(tool-bar-mode -1); Remove ferramentas
(menu-bar-mode -1); Remove menu
(scroll-bar-mode -1); Remove barra de rolagem
(global-display-line-numbers-mode); Coloca numeração nas linhas
(set-face-attribute 'default nil :height 140); Altera o tamanho da fonte
(load-theme 'wombat)

;; Pacotes
(require 'package)
(setq package-enable-at-startup nil); Desabilita início de ativação

(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/")); Adiciona MELPA

(package-initialize); Inicia os pacotes

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package)); Adiciona pacote use-package

(use-package try; Adiciona o try
  :ensure t)

(use-package which-key; Adiciona o which-key
  :ensure t
  :config
  (progn
    (which-key-setup-side-window-right-bottom)
    (which-key-mode)))

(use-package auto-complete; Adiciona o auto-complete
  :ensure t
  :init
  (progn
    (ac-config-default)
    (global-auto-complete-mode t)))
  
(use-package neotree; Adiciona o neotree com o atalho CTRL + \
  :ensure t
  :bind (("C-\\" . 'neotree-toggle)))

(use-package ace-window; Adiciona o acewindow com o atalho CTRL + Q
  :ensure t
  :bind (("C-q" . 'ace-window)))


;; Meus atalhos

; Simplificando utilidades comuns
(global-set-key (kbd "C-z") 'find-file)
(global-set-key (kbd "C-u") 'undo)
(global-set-key (kbd "C-a") 'mark-whole-buffer)

; Controlam janelas e buffers
(global-set-key (kbd "M-<right>") 'switch-to-next-buffer)
(global-set-key (kbd "M-<left>") 'switch-to-prev-buffer)
(global-set-key (kbd "C-<tab>") 'other-window)
(global-set-key (kbd "C-0") 'delete-window)
(global-set-key (kbd "C-1") 'delete-other-windows)
(global-set-key (kbd "C-2") 'split-window-below)
(global-set-key (kbd "C-3") 'split-window-right)

; Executar o shell
(global-set-key (kbd "M-s") 'shell)

;; Gerados pelo MELPA
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(wombat))
 '(package-selected-packages '(company neotree auto-complete try)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
