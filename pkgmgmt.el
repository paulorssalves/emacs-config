(defun instpkgs (pkg)
  (while pkg
    (if (not (require (car pkg) nil 'noerror))
	(package-install (car pkg)) (setq pkg (cdr pkg))
	(setq pkg(cdr pkg)))))

(defun delpkgs (pkg-list)
    (dolist (pkg pkg-list)
      (when (package-installed-p pkg)
	(package-delete (car(cdr (assoc pkg package-alist)))))))
		 
