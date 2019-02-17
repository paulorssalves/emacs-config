(setf initial-buffer-choice "~/") ; set initial buffer to home dir

;; require package and add dirs  to load-path
(require 'package)
(add-to-list 'load-path "~/.emacs.d/emmet-mode.el/")
(add-to-list 'load-path "~/.emacs.d/package.el/")
(add-to-list 'load-path "~/.emacs.d/linum-hl/")
(add-to-list 'package-archives
             '("melpa-stable" . "http://stable.melpa.org/packages/") t)

;; custom set variables and themes
(package-initialize)
(custom-set-variables
 '(custom-safe-themes
   (quote
    ("d8dc153c58354d612b2576fea87fe676a3a5d43bcc71170c62ddde4a1ad9e1fb" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "84d2f9eeb3f82d619ca4bfffe5f157282f4779732f48a5ac1484d94d5ff5b279" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" default)))
 '(package-selected-packages
   (quote
    (emmet-mode smart-mode-line-powerline-theme smart-mode-line web-mode spacemacs-theme s restart-emacs powerline pdf-tools paredit multi macrostep geiser evil epc auto-complete abyss-theme))))
(custom-set-faces)

;; requiring packages
(require 'helm-config)
(require 'evil)


;; setting modes
(evil-mode 1)
(auto-complete-mode 1)
(ido-mode 1)
(helm-mode 1)
(fringe-mode 0)
(tool-bar-mode -1)
(menu-bar-mode 1)
(scroll-bar-mode -1)
(menu-bar-mode -1)
(show-paren-mode)
(winner-mode)
(global-hl-line-mode)
(global-linum-mode)
(set-default 'cursor-type 'bar)
(package-initialize)
(prettify-symbols-mode 1)

;; hooks
(add-hook 'python-mode-hook 'jedi:setup)
(add-hook 'c-mode-hook (lambda () (electric-pair-mode 1)))

;; slime
(setq inferior-lisp-program "/usr/bin/sbcl")
(setq slime-contribs '(slime-fancy))

;; setting themes and linum colors
(setq linum-format " %d ")
(setq curr_time (string-to-number (format-time-string "%H")))
(cond ((< curr_time 7) ((lambda () (load-theme 'abyss)
			  (set-face-foreground 'linum "#303030")
			  (set-face-background 'linum "#000000"))))
      ((and (> curr_time 6) (<= curr_time 17))  ((lambda () (load-theme 'spacemacs-light)
						  (set-face-foreground 'linum "#cecbc2")
						  (set-face-background 'linum "#fbf8ef"))))
      ((and (> curr_time 17) (<= curr_time 23)) ((lambda () (load-theme 'spacemacs-dark)
						   (set-face-foreground 'linum "#3C474F")
						   (set-face-background 'linum "#292b2e")))))

(load-theme 'smart-mode-line-respectful)

(global-prettify-symbols-mode +1)
(add-to-list 'default-frame-alist '(font . "DejaVu Sans Mono-10"))
(set-face-attribute 'default t :font "DejaVu Sans Mono-10")
(set-face-attribute 'default nil :font "DejaVu Sans Mono-10")
(set-frame-font "DejaVu Sans Mono-10" nil t)

