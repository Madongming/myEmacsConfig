(defun solidity-mode-hook ()
  (setq c-basic-offset 4))
;; solodity-mode
(use-package solidity-mode
  :ensure t
  :hook
  (solidity-mode . solidity-mode-hook))
