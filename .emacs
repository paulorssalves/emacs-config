;;; TODO:
; recolor the terminal linum
; * enable <f1> ansi-term keybinding

; themes
(add-to-list 'load-path "~/.emacs.d/emmet-mode.el/")

; Package List
(add-to-list 'load-path "~/.emacs.d/package.el/")


; stuff I don't understand from MELPA
(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  (when no-ssl
    (warn "\
YOUR version of Emacs does not support SSL connections,
which is unsafe because it allows man-in-the-middle attacks.
There are two things you can do about this warning:
1. Install an Emacs version that does support SSL and be safe.
2. Remove this warning from your init file so you won't see it again."))
  ;; Comment/uncomment these two lines to enable/disable MELPA and MELPA Stable as desired
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  ;;(add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
    (add-to-list 'package-archives (cons "gnu" (concat proto "://elpa.gnu.org/packages/")))))
(package-initialize)
      
(add-hook 'python-mode-hook 'jedi:setup)

; folders to be required
(require 'evil)
(require 'spaceline-config)
(spaceline-spacemacs-theme)

; functionalities
(evil-mode 1)
(auto-complete-mode 1)
(ido-mode 1)

;; edit emacs appearance
(tool-bar-mode -1)
(menu-bar-mode 1)
(scroll-bar-mode -1)
(menu-bar-mode -1)
(show-paren-mode)
(winner-mode)
(global-hl-line-mode)
(global-linum-mode)
(set-default 'cursor-type 'bar)

; lisp environment
(setq inferior-lisp-program "/usr/bin/sbcl")
(setq slime-contribs '(slime-fancy))

;; edit fonting
(add-to-list 'default-frame-alist '(font . "DejaVu Sans Mono-9"))
(set-face-attribute 'default t :font "DejaVu Sans Mono-9")
(set-face-attribute 'default nil :font "DejaVu Sans Mono-9")
(set-frame-font "DejaVu Sans Mono-9" nil t)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;(setq sml/theme 'dark)
;(sml/setup)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(Linum-format "%7i ")
 '(compilation-message-face 'default)
 '(custom-enabled-themes '(spacemacs-dark))
 '(custom-safe-themes
   '("151bde695af0b0e69c3846500f58d9a0ca8cb2d447da68d7fbf4154dcf818ebc" "f0dc4ddca147f3c7b1c7397141b888562a48d9888f1595d69572db73be99a024" "d1b4990bd599f5e2186c3f75769a2c5334063e9e541e37514942c27975700370" "6d589ac0e52375d311afaa745205abb6ccb3b21f6ba037104d71111e7e76a3fc" "6b2636879127bf6124ce541b1b2824800afc49c6ccd65439d6eb987dbf200c36" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "a77ced882e25028e994d168a612c763a4feb8c4ab67c5ff48688654d0264370c" "d8dc153c58354d612b2576fea87fe676a3a5d43bcc71170c62ddde4a1ad9e1fb" "26d49386a2036df7ccbe802a06a759031e4455f07bda559dcf221f53e8850e69" "3629b62a41f2e5f84006ff14a2247e679745896b5eaa1d5bcfbc904a3441b0cd" "a4c9e536d86666d4494ef7f43c84807162d9bd29b0dfd39bdf2c3d845dcc7b2e" "a19265ef7ecc16ac4579abb1635fd4e3e1185dcacbc01b7a43cf7ad107c27ced" "f9574c9ede3f64d57b3aa9b9cef621d54e2e503f4d75d8613cbcc4ca1c962c21" "b9a06c75084a7744b8a38cb48bc987de10d68f0317697ccbd894b2d0aca06d2b" default))
 '(fci-rule-character-color "#202020")
 '(fci-rule-color "#3C3D37")
 '(fringe-mode 4 nil (fringe))
 '(highlight-changes-colors '("#FD5FF0" "#AE81FF"))
 '(highlight-tail-colors
   '(("#3C3D37" . 0)
     ("#679A01" . 20)
     ("#4BBEAE" . 30)
     ("#1DB4D0" . 50)
     ("#9A8F21" . 60)
     ("#A75B00" . 70)
     ("#F309DF" . 85)
     ("#3C3D37" . 100)))
 '(initial-buffer-choice "~/")
 '(magit-diff-use-overlays nil)
 '(main-line-color1 "#1E1E1E")
 '(main-line-color2 "#111111")
 '(main-line-separator-style 'chamfer)
 '(package-selected-packages
   '(doom-themes spacemacs-theme zenburn-theme zenburn markdown-mode makefile makefile-mode geiser lispy paredit elpy irony skewer paredit elisp-slime-nav undo-tree tablist macrostep s epl pkg-info popup let-alist nlinum concurrent ctable epc jedi-core async helm-core helm helm-make goto-chg jedi auto-complete python-mode list-packages-ext web-mode slime restart-emacs projectile pdf-tools multi font-lock+ evil emmet-mode abyss-theme))
 '(pos-tip-background-color "#FFFACE")
 '(pos-tip-foreground-color "#272822")
 '(powerline-color1 "#1E1E1E")
 '(powerline-color2 "#111111")
 '(tooltip-mode nil)
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   '((20 . "#F92672")
     (40 . "#CF4F1F")
     (60 . "#C26C0F")
     (80 . "#E6DB74")
     (100 . "#AB8C00")
     (120 . "#A18F00")
     (140 . "#989200")
     (160 . "#8E9500")
     (180 . "#A6E22E")
     (200 . "#729A1E")
     (220 . "#609C3C")
     (240 . "#4E9D5B")
     (260 . "#3C9F79")
     (280 . "#A1EFE4")
     (300 . "#299BA6")
     (320 . "#2896B5")
     (340 . "#2790C3")
     (360 . "#66D9EF")))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   (unspecified "#272822" "#3C3D37" "#F70057" "#F92672" "#86C30D" "#A6E22E" "#BEB244" "#E6DB74" "#40CAE4" "#66D9EF" "#FB35EA" "#FD5FF0" "#74DBCD" "#A1EFE4" "#F8F8F2" "#F8F8F0")))

(set-face-background 'linum "#272822") ;; spacemacs-dark foreground
(set-face-foreground 'linum "#3e414c" ) ;;
