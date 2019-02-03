(defun instpkgs (pkg-list)
  (while pkg-list
    (if (not (require (car pkg-list) nil 'noerror))
	(package-install (car pkg-list)) (setq pkg-list (cdr pkg-list))
	(setq pkg-list(cdr pkg-list)))))

(defun delpkgs (pkg-list)
    (dolist (pkg pkg-list)
      (when (package-installed-p pkg)
	(package-delete (car(cdr (assoc pkg package-alist)))))))
		 
