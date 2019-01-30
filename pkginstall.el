; needs emacs25 in order to work
(package-refresh-contents)

(setq pkg-list '(smart-mode-line markdown-mode makefile makefile-mode geiser lispy paredit elpy moe-theme abyss-theme emmet-mode evil goto-chg helm-make helm helm-core async jedi auto-complete jedi-core epc ctable concurrent monokai-theme multi nlinum pdf-tools let-alist popup projectile pkg-info epl deferred python-mode restart-emacs slime macrostep soothe-theme tablist undo-tree web-mode irony))

(defun inst-els (list)
  (while list
    (if (not (require (car pkg-list) nil 'noerror))
	(package-install (car list)) (setq list (cdr list))
	(setq list(cdr list)))))

(inst-els pkg-list)
