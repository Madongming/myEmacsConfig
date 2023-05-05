(menu-bar-mode -1)

(setq inhibit-startup-screen t)

(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

;; Settings for Emacs 28+
(when (and (fboundp 'native-comp-available-p)
	   (native-comp-available-p))
  (setq native-comp-async-report-warnings-errors nil
	comp-deferred-compilation t
	package-native-compile t)
  (add-to-list 'native-comp-eln-load-path (expand-file-name "eln-cache" user-emacs-directory)))

(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)

(defalias 'yes-or-no-p 'y-or-n-p)

(global-display-line-numbers-mode t)

(setq gc-cons-threshold most-positive-fixnum)

(provide 'startup)
