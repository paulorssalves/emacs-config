
(defun delpackages (pkg-list)
    (dolist (pkg pkg-list)
      (when (package-installed-p pkg)
	(package-delete (car(cdr (assoc pkg package-alist)))))))
		 
