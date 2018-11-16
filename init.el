(package-initialize)


(mapc (lambda (file)
         (load (concat "~/.emacs.d/lisp/" file)))
       (mapcar 'symbol-name
               '(packages
		 parrot
		 base
		 ido
		 magit
		 python
                 theme
		 yaml-mode
		 groovy-mode)))

