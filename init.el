
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

(package-initialize)

(add-to-list 'load-path "~/.emacs.d/lisp/")

(require 'init-packages)

(tool-bar-mode -1)
(scroll-bar-mode -1)
;;(electric-indent-mode -1)
(global-linum-mode t)
(setq inhibit-splash-screen t)
(setq-default cursor-type 'bar)
(setq make-backup-files nil)
(setq auto-save-default nil)

(abbrev-mode t)
(define-abbrev-table 'global-abbrev-table '(
					    ;; signature
					    ("8zkx" "zhangkaixuan")
					    ))

(defun open-my-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

(global-set-key (kbd "<f2>") 'open-my-init-file)

(require 'org)
(setq org-src-fontify-natively t)

(setq org-agenda-files '("~/org"))
(global-set-key (kbd "C-c a") 'org-agenda)

(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)


(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "\C-c C-r") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "C-h f") 'counsel-describe-function)
(global-set-key (kbd "C-h v") 'counsel-describe-variable)

(delete-selection-mode t)

(setq initial-frame-alist (quote ((fullscreen . maximized))))

(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

(global-hl-line-mode t)

(setq ring-bell-function 'ignore)

(global-auto-revert-mode t)
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

(global-set-key (kbd "C-h C-f") 'find-function)
(global-set-key (kbd "C-h C-v") 'find-variable)
(global-set-key (kbd "C-h C-k") 'find-function-on-key)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-idle-delay 0.08)
 '(company-minimum-prefix-length 2)
 '(custom-safe-themes
   (quote
    ("d9646b131c4aa37f01f909fbdd5a9099389518eb68f25277ed19ba99adeb7279" default))))
 
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
