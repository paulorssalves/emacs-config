:;exec emacs -batch -l "$0" -f main "$@"

;;;;;;;; install-required-packages.el:
;;;;; automatiza o processo de instalação dos pacotes associados a
;;;;; essa configuração do emacs

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)
(package-refresh-contents)
(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")
(setq package-check-signature nil)

(defun installed? (pkg)
  ;;; Checa se o pacote está instalado
  (if (eq (require pkg nil 'noerror) pkg) 't nil))


(defun install-multiple (pkg-list)
;;; instala múltiplos pacotes de uma só vez
  (cond ((consp pkg-list) ;; if pkg-list is a cons
	 (while pkg-list
	   (if (not (installed? (car pkg-list)))
	       (progn
		 (package-install (car pkg-list))
		 (setq pkg-list (cdr pkg-list)))
	     (setq pkg-list (cdr pkg-list )))))
	((symbolp pkg-list) ;; if pkg-list is actually a single package
	 (if (not (installed? pkg-list))
	     (package-install pkg-list)))
	('t ;; else return an error message
	 (message "You should input a list of packages or a single quoted package"))))


(setq dependencies '(evil markdown-mode restart-emacs paredit noflet web-mode org-bullets ox-twbs ox-slimhtml org-sidebar buffer-flip evil-magit magit org-gcal almost-mono-themes doom-themes auctex))

(install-multiple dependencies)
