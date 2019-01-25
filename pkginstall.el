(setq pkg-list '(abyss-theme django-mode emmet-mode evil font-lock+ goto-chg helm-make helm helm-core async jedi auto-complete jedi-core epc ctable concurrent monokai-theme multi nlinum pdf-tools let-alist popup projectile pkg-info epl python-django python-environment deferred python-mode restart-emacs s slime macrostep soothe-theme tablist undo-tree web-mode))

(defun inst-els (list)
  (while list
    (package-install (car list))
    (setq list (cdr list))))

(inst-els pkg-list)

