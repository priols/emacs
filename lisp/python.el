(elpy-enable)

(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))

(defvar myPackages
  '(better-defaults
    ein
    elpy
    flycheck
    py-autopep8)) ;; add the autopep8 package


(add-hook 'python-mode-hook 'elpy-mode)
(with-eval-after-load 'elpy
  (remove-hook 'elpy-modules 'elpy-module-flymake)
  (add-hook 'elpy-mode-hook 'flycheck-mode)
  (add-hook 'elpy-mode-hook 'elpy-use-ipython "ipython3"))


(define-coding-system-alias 'UTF-8 'utf-8)
