(defun solidity-mode-hook ()
  (setq c-basic-offset 2))
;; solodity-mode
(use-package solidity-mode
  :ensure t
  :mode
  (("\\.sol\\'" . solidity-mode))
  :hook
  (solidity-mode . solidity-mode-hook))
