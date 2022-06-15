(add-to-list 'load-path
	     (expand-file-name (concat user-emacs-directory "libs")))

(require 'init-package)
(require 'startup)
(require 'manager)
(require 'dev)

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file))
