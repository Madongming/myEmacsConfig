(add-to-list 'load-path
	     (expand-file-name (concat user-emacs-directory "libs")))
(require 'startup)
(require 'source-list)
(require 'init-package) ;; use-pacakge
(require 'manager)
(require 'dev)

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file))
