(use-package eglot
  :hook ((go-mode js-mode python-mode web-mode typescript-mode solidity-mode) . eglot-ensure)
  :bind (("C-c e f" . #'eglot-format)
         ("C-c e i" . #'eglot-code-action-organize-imports)
         ("C-c e q" . #'eglot-code-action-quickfix))
  :config
  ;;(setq eglot-ignored-server-capabilities '(:documentHighlightProvider))
  (defun eglot-actions-before-save()
    (add-hook 'before-save-hook (lambda ()
                                  (call-interactively #'eglot-format)
                                  (call-interactively #'eglot-code-action-organize-imports))))
  (add-to-list 'eglot-server-programs '(web-mode "vls"))
  (add-to-list 'eglot-server-programs '(solidity-mode . ("solidity-language-server" "--stdio")))
  (add-hook 'eglot--managed-mode-hook #'eglot-actions-before-save))

(load "./dev/golang.el")
(load "./dev/python.el")
(load "./dev/web.el")
(load "./dev/dash.el")
(load "./dev/solidity.el")

(provide 'dev)
