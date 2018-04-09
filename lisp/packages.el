(require 'package)

(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

(unless (file-exists-p "~/.emacs.d/elpa/archives/melpa")
  (package-refresh-contents))

(defun packages-install (packages)
  (dolist (it packages)
    (when (not (package-installed-p it))
      (package-install it)))
  (delete-other-windows))

(defun init--install-packages ()
  (packages-install
   '(alect-themes
     bind-map
     highlight-parentheses
     ido-ubiquitous)))

(condition-case nil
    (init--install-packages)
  (error
   (package-refresh-contents)
(init--install-packages)))
