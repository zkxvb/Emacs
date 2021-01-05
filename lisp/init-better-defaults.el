(setq make-backup-files nil)
(setq auto-save-default nil)

(abbrev-mode t)
(define-abbrev-table 'global-abbrev-table '(
					    ;; signature
					    ("8zkx" "zhangkaixuan")
					    ))


(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)

(delete-selection-mode t)

(global-auto-revert-mode t)

(setq ring-bell-function 'ignore)

(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

(provide 'init-better-defaults)

