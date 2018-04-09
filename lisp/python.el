(require 'elpy)
(require 'flycheck)
(require 'py-autopep8)


(elpy-enable)
(add-hook 'python-mode-hook #'python-style)
(add-hook 'elpy-mode-hook 'flycheck-mode)
(add-hook 'elpy-mode-hook 'elpy-use-ipython "ipython3")
(define-coding-system-alias 'UTF-8 'utf-8)
