;; Web Developemnt (html, css, js)
(use-package web-mode
  :init
  (add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))
  ;; use web-mode to handle vue file
  (add-to-list 'auto-mode-alist '("\\.vue\\'" . web-mode))
  :config (setq web-mode-enable-current-element-highlight t)
  :custom
  (indent-tabs-mode nil)
  (tab-width 2))
    
(use-package typescript-mode
  :custom
  (indent-tabs-mode nil)
  (tab-width 2))
(use-package json-mode)
(use-package markdown-mode)
(use-package protobuf-mode)
(use-package restclient
  :mode (("\\.http\\'" . restclient-mode)))
(use-package yaml-mode)
(use-package quickrun)
