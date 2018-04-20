(defalias 'yes-or-no-p 'y-or-n-p)
(setq auto-save-default nil
      backup-inhibited t
      inhibit-startup-message t
      dired-dwim-target t
      custom-file (expand-file-name "~/.emacs.d/custom.el"))

(define-coding-system-alias 'UTF-8 'utf-8)
