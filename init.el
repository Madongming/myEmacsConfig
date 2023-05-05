(add-to-list 'load-path
	     (expand-file-name (concat user-emacs-directory "libs")))

(require 'init-package)
(require 'startup)
(require 'manager)
(require 'dev)
(require 'orgmode)

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file))

;; For fix error Lisp nesting exceeds `max-lisp-eval-depth' and `max-specpdl-size`
(setq max-specpdl-size 64000)
(setq max-lisp-eval-depth 64000)
