(use-package copilot
  :quelpa (copilot :fetcher github
                   :repo "zerolfx/copilot.el"
                   :branch "main"
                   :files ("dist" "*.el"))
  :bind (("<tab>" . #'copilot-accept-completion)
         ("TAB" . #'copilot-accept-completion)))
;;(setq copilot-indent-warning-suppress t)
;;(define-key copilot-completion-map (kbd "<tab>") #'copilot-accept-completion)
;;(define-key copilot-completion-map (kbd "TAB") #'copilot-accept-completion)
