(package-initialize)


(mapc (lambda (file)
         (load (concat "~/.emacs.d/lisp/" file)))
       (mapcar 'symbol-name
               '(packages
		 base
		 ido
		 magit
		 python
                 theme)))

