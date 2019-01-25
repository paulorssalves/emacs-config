; needs emacs25 in order to work

(setq pkg-list '(moe-theme abyss-theme django-mode emmet-mode evil goto-chg helm-make helm helm-core async jedi auto-complete jedi-core epc ctable concurrent monokai-theme multi nlinum pdf-tools let-alist popup projectile pkg-info epl python-django python-environment deferred python-mode restart-emacs slime macrostep soothe-theme tablist undo-tree web-mode))

(defun inst-els (list)
  (while list
    (package-install (car list))
    (setq list (cdr list))))

(inst-els pkg-list)

