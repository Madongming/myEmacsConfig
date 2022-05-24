;; set source-list
(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  (add-to-list 'package-archives (cons "GNU ELPA" (concat proto "://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")) t)
  (add-to-list 'package-archives (cons "MELPA" (concat proto "://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")) t)
  (add-to-list 'package-archives (cons "Org" (concat proto "://mirrors.tuna.tsinghua.edu.cn/elpa/org/")) t))

(provide 'source-list)
