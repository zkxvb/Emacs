(require 'cl)

(when (>= emacs-major-version 24)
  (require 'package)
  ;;(package-initialize)
  (setq package-archives '(("gnu" . "http://mirrors.ustc.edu.cn/elpa/gnu/")
			   ("melpa" . "http://mirrors.ustc.edu.cn/elpa/melpa/")
			   ("melpa-stable" . "http://mirrors.ustc.edu.cn/elpa/melpa-stable/")
			   ("org" . "http://mirrors.ustc.edu.cn/elpa/org/")))
  ;; (add-to-list 'package-archives '("melpa", "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/") t)
  )

;; add whatever packages you want here
(defvar zkx/packages '(company
		       monokai-theme
		       hungry-delete
		       swiper
		       counsel
		       smartparens
		       js2-mode
		       nodejs-repl
		       exec-path-from-shell
		       popwin
		       ) "Default packages")

(setq package-selected-packages zkx/packages)

  (defun zkx/packages-installed-p ()
    (loop for pkg in zkx/packages
      when (not (package-installed-p pkg)) do (return nil)
      finally (return t)))
  (unless (zkx/packages-installed-p )
    (message "%s" "Refreshing package database...")
    (package-refresh-contents)
    (dolist (pkg zkx/packages)
      (when (not (package-installed-p pkg))
        (package-install pkg))))


(global-company-mode t)

(require 'hungry-delete)
(global-hungry-delete-mode)

(require 'smartparens-config)
(smartparens-global-mode t)

(load-theme 'monokai t)

(ivy-mode 1)
(setq ivy-use-virtual-buffers t)


;; config js2-mode for js files
(setq auto-mode-alist
      (append
       '(("\\.js\\'" . js2-mode))
       auto-mode-alist))

(require 'popwin)
(popwin-mode t)


(provide 'init-packages)
