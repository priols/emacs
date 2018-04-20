(elpy-enable)
(remove-hook 'elpy-modules 'elpy-module-flymake)
(add-hook 'elpy-mode-hook 'flycheck-mode)
(add-hook 'python-mode-hook 'elpy-mode)
(add-hook 'elpy-mode-hook 'elpy-use-ipython "ipython3")


