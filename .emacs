
(require 'package)
(require 'org)
(setq-default truncate-lines nil)

(org-babel-load-file (expand-file-name "~/.emacs.d/config/config.org" user-emacs-directory))
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(LaTeX-command-style (quote (("" "%(PDF)%(latex) --shell-escape %S%(PDFout)"))))
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   ["#4F4F4F" "#CC9393" "#7F9F7F" "#F0DFAF" "#8CD0D3" "#DC8CC3" "#93E0E3" "#6F6F6F"])
 '(compilation-message-face (quote default))
 '(cua-global-mark-cursor-color "#93E0E3")
 '(cua-normal-cursor-color "#DCDCCC")
 '(cua-overwrite-cursor-color "#F0DFAF")
 '(cua-read-only-cursor-color "#7F9F7F")
 '(custom-safe-themes
   (quote
    ("8b4d8679804cdca97f35d1b6ba48627e4d733531c64f7324f764036071af6534" "d9766ec8d1dca35ad9392d212da441517800028b585d187f08ea44ce1c84ebdf" "5d75f9080a171ccf5508ce033e31dbf5cc8aa19292a7e0ce8071f024c6bcad2a" "bd82c92996136fdacbb4ae672785506b8d1d1d511df90a502674a51808ecc89f" "de65dc21fefce202883a5071170962c73b4bf4b691156d0a28239765f71b23e5" "b73a23e836b3122637563ad37ae8c7533121c2ac2c8f7c87b381dd7322714cd0" "00445e6f15d31e9afaa23ed0d765850e9cd5e929be5e8e63b114a3346236c44c" "13a8eaddb003fd0d561096e11e1a91b029d3c9d64554f8e897b2513dbf14b277" "7f1d414afda803f3244c6fb4c2c64bea44dac040ed3731ec9d75275b9e831fe5" "51ec7bfa54adf5fff5d466248ea6431097f5a18224788d0bd7eb1257a4f7b773" "285d1bf306091644fb49993341e0ad8bafe57130d9981b680c1dbd974475c5c7" "2809bcb77ad21312897b541134981282dc455ccd7c14d74cc333b6e549b824f3" "830877f4aab227556548dc0a28bf395d0abe0e3a0ab95455731c9ea5ab5fe4e1" "c433c87bd4b64b8ba9890e8ed64597ea0f8eb0396f4c9a9e01bd20a04d15d358" "0fffa9669425ff140ff2ae8568c7719705ef33b7a927a0ba7c5e2ffcfac09b75" "b9e9ba5aeedcc5ba8be99f1cc9301f6679912910ff92fdf7980929c2fc83ab4d" "84d2f9eeb3f82d619ca4bfffe5f157282f4779732f48a5ac1484d94d5ff5b279" "37ba833442e0c5155a46df21446cadbe623440ccb6bbd61382eb869a2b9e9bf9" "8ffdc8c66ceeaf7921f4510a70d808f01b303e6b4d177c947b442e80d4228678" "ad62163582d1ffb83f219819f97828be2e8d76aa2531697f42fabcc52670a739" "55c2069e99ea18e4751bd5331b245a2752a808e91e09ccec16eb25dadbe06354" "1068ae7acf99967cc322831589497fee6fb430490147ca12ca7dd3e38d9b552a" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "2540689fd0bc5d74c4682764ff6c94057ba8061a98be5dd21116bf7bf301acfb" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "d8dc153c58354d612b2576fea87fe676a3a5d43bcc71170c62ddde4a1ad9e1fb" "bd7b7c5df1174796deefce5debc2d976b264585d51852c962362be83932873d9" "d1ede12c09296a84d007ef121cd72061c2c6722fcb02cb50a77d9eae4138a3ff" default)))
 '(fci-rule-color "#14151E")
 '(highlight-changes-colors (quote ("#DC8CC3" "#bbb0cb")))
 '(highlight-symbol-colors
   (quote
    ("#67a86387593f" "#548763ed646c" "#6037530c52d0" "#5bcd59505f42" "#4e90559c4e56" "#64795920520c" "#52ae607160f6")))
 '(highlight-symbol-foreground-color "#FFFFEF")
 '(highlight-tail-colors
   (quote
    (("#4F4F4F" . 0)
     ("#488249" . 20)
     ("#5dacaf" . 30)
     ("#57a2a4" . 50)
     ("#b6a576" . 60)
     ("#ac7b5a" . 70)
     ("#aa5790" . 85)
     ("#4F4F4F" . 100))))
 '(hl-bg-colors
   (quote
    ("#b6a576" "#ac7b5a" "#9f5c5c" "#aa5790" "#85749c" "#57a2a4" "#5dacaf" "#488249")))
 '(hl-fg-colors
   (quote
    ("#3F3F3F" "#3F3F3F" "#3F3F3F" "#3F3F3F" "#3F3F3F" "#3F3F3F" "#3F3F3F" "#3F3F3F")))
 '(hl-paren-colors (quote ("#93E0E3" "#F0DFAF" "#8CD0D3" "#bbb0cb" "#7F9F7F")))
 '(lsp-ui-doc-border "#FFFFEF")
 '(magit-diff-use-overlays nil)
 '(nrepl-message-colors
   (quote
    ("#CC9393" "#DFAF8F" "#F0DFAF" "#488249" "#95d291" "#57a2a4" "#93E0E3" "#DC8CC3" "#bbb0cb")))
 '(org-agenda-custom-commands
   (quote
    (("n" "Agenda and all TODOs"
      ((agenda "" nil)
       (alltodo "" nil))
      nil)
     ("i" "Important: urgent things and phone calls"
      ((tags "URGENT"
	     ((org-agenda-overriding-header "Urgent thins to do")))
       (tags "PHONE"
	     ((org-agenda-overriding-header "Phone calls to do"))))
      nil nil))))
 '(org-agenda-files nil)
 '(org-log-into-drawer t)
 '(package-selected-packages
   (quote
    (orgbox jazz-theme flatui-dark-theme night-owl-theme abyss-theme ledger-mode evil-magit magit solarized-theme darkroom visual-fill-column org-gcal org-caldav oauth2 oauth impatient-mode simple-httpd jedi ranger ox-twbs use-package auctex smart-mode-line-powerline-theme powerline darkokai-theme planet-theme dracula-theme zerodark-theme afternoon-theme 4clojure hy-mode latex-preview-pane latex-extra pdf-tools emmet-mode monokai-alt-theme monkai-alt-theme markdown-mode org-babel-eval-in-repl evil)))
 '(pos-tip-background-color "#4F4F4F")
 '(pos-tip-foreground-color "#FFFFEF")
 '(send-mail-function (quote mailclient-send-it))
 '(smartrep-mode-line-active-bg (solarized-color-blend "#7F9F7F" "#4F4F4F" 0.2))
 '(sml/mode-width
   (if
       (eq
	(powerline-current-separator)
	(quote arrow))
       (quote right)
     (quote full)))
 '(sml/pos-id-separator
   (quote
    (""
     (:propertize " " face powerline-active1)
     (:eval
      (propertize " "
		  (quote display)
		  (funcall
		   (intern
		    (format "powerline-%s-%s"
			    (powerline-current-separator)
			    (car powerline-default-separator-dir)))
		   (quote powerline-active1)
		   (quote powerline-active2))))
     (:propertize " " face powerline-active2))))
 '(sml/pos-minor-modes-separator
   (quote
    (""
     (:propertize " " face powerline-active1)
     (:eval
      (propertize " "
		  (quote display)
		  (funcall
		   (intern
		    (format "powerline-%s-%s"
			    (powerline-current-separator)
			    (cdr powerline-default-separator-dir)))
		   (quote powerline-active1)
		   (quote sml/global))))
     (:propertize " " face sml/global))))
 '(sml/pre-id-separator
   (quote
    (""
     (:propertize " " face sml/global)
     (:eval
      (propertize " "
		  (quote display)
		  (funcall
		   (intern
		    (format "powerline-%s-%s"
			    (powerline-current-separator)
			    (car powerline-default-separator-dir)))
		   (quote sml/global)
		   (quote powerline-active1))))
     (:propertize " " face powerline-active1))))
 '(sml/pre-minor-modes-separator
   (quote
    (""
     (:propertize " " face powerline-active2)
     (:eval
      (propertize " "
		  (quote display)
		  (funcall
		   (intern
		    (format "powerline-%s-%s"
			    (powerline-current-separator)
			    (cdr powerline-default-separator-dir)))
		   (quote powerline-active2)
		   (quote powerline-active1))))
     (:propertize " " face powerline-active1))))
 '(sml/pre-modes-separator (propertize " " (quote face) (quote sml/modes)))
 '(term-default-bg-color "#3F3F3F")
 '(term-default-fg-color "#DCDCCC")
 '(truncate-lines nil)
 '(vc-annotate-background nil)
 '(vc-annotate-background-mode nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#d54e53")
     (40 . "goldenrod")
     (60 . "#e7c547")
     (80 . "DarkOliveGreen3")
     (100 . "#70c0b1")
     (120 . "DeepSkyBlue1")
     (140 . "#c397d8")
     (160 . "#d54e53")
     (180 . "goldenrod")
     (200 . "#e7c547")
     (220 . "DarkOliveGreen3")
     (240 . "#70c0b1")
     (260 . "DeepSkyBlue1")
     (280 . "#c397d8")
     (300 . "#d54e53")
     (320 . "goldenrod")
     (340 . "#e7c547")
     (360 . "DarkOliveGreen3"))))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   (quote
    (unspecified "#3F3F3F" "#4F4F4F" "#9f5c5c" "#CC9393" "#488249" "#7F9F7F" "#b6a576" "#F0DFAF" "#57a2a4" "#8CD0D3" "#aa5790" "#DC8CC3" "#5dacaf" "#93E0E3" "#DCDCCC" "#6F6F6F")))
 '(xterm-color-names
   ["#4F4F4F" "#CC9393" "#7F9F7F" "#F0DFAF" "#8CD0D3" "#DC8CC3" "#93E0E3" "#fffff6"])
 '(xterm-color-names-bright
   ["#3F3F3F" "#DFAF8F" "#878777" "#6F6F6F" "#DCDCCC" "#bbb0cb" "#FFFFEF" "#FFFFFD"]))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;;; the packages below are the ones currently being used and thus necessary to be installed
(setq dependencies '(evil goto-chg helm helm-core async monokai-alt-theme noflet org-babel-eval-in-repl ess julia-mode matlab-mode eval-in-repl ace-window avy dash org-bullets paredit popup restart-emacs smart-mode-line rich-minority undo-tree web-mode))


