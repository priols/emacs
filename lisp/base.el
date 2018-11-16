(defalias 'yes-or-no-p 'y-or-n-p)
(setq auto-save-default nil
      backup-inhibited t
      inhibit-startup-message t
      dired-dwim-target t
      custom-file (expand-file-name "~/.emacs.d/custom.el"))

(define-coding-system-alias 'UTF-8 'utf-8)

(add-hook 'ido-setup-hook
	  (lambda ()
	    (define-key ido-completion-map
	      (kbd "C-x g") 'ido-enter-magit-status)))

(setq nxml-child-indent 4 nxml-attribute-indent 4)
;; (add-hook 'flycheck-after-syntax-check-hook
;;           (lambda  ()
;;             (if flycheck-current-errors
;;                 (flycheck-list-errors)
;;               (when (get-buffer "*Flycheck errors*")
;;                 (switch-to-buffer "*Flycheck errors*")
;;                 (kill-buffer (current-buffer))
;;                 (delete-window)))))
;;(find-file "/ssh:oedipe|sudo:root@oedipe:/home")
(defun yaml-parse ()
  "yaml to json to a hashmap of current buffer, with python.

   There is no yaml parser in elisp.
   You need pyYaml and some yaml datatypes like dates are not supported by json."
  (interactive)
  (let ((json-object-type 'hash-table))
    (setq  myyaml (json-read-from-string (shell-command-to-string (concat "python -c 'import sys, yaml, json; json.dump(yaml.load(sys.stdin), sys.stdout, indent=4)' < " (buffer-file-name))))))
  ;; code here
  )
