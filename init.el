(menu-bar-mode -1)
(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  ;; Comment/uncomment these two lines to enable/disable MELPA and MELPA Stable as desired
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  (add-to-list 'package-archives (cons "melpa Stable" (concat proto "://stable.melpa.org/packages/")) t)
  ;;(add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
    (add-to-list 'package-archives '("gnu" . (concat proto "://elpa.gnu.org/packages/")))))
(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (go-guru go-eldoc 0blayout vue-mode ox-gfm dash-at-point material-theme flycheck-pycheckers elpy ## web-mode tide flycheck-yamllint yaml-mode go-gen-test find-file-in-project go-playground-cli go-playground slime-company slime neotree company-go golint go-tag go-autocomplete go-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(load "~/.emacs.d/keys.el")
;;(load "~/.emacs.d/go.el")
(load "~/.emacs.d/go-init.el")
(load "~/.emacs.d/dash-at-point.el")
(load "~/.emacs.d/neotree.el")
(load "~/.emacs.d/slime.el")
(load "~/.emacs.d/tide.el")
(load "~/.emacs.d/elpy.el")
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(put 'set-goal-column 'disabled nil)

(add-hook 'mmm-mode-hook
          (lambda ()
            (set-face-background 'mmm-default-submode-face nil)))

(setq-default indent-tabs-mode nil)
(setq default-tab-width 4)
(require 'whitespace)
