;; Initialize package

(require 'package)
(quelpa
 '(quelpa-use-package
   :fetcher git
   :url "https://github.com/quelpa/quelpa-use-package.git"))

(unless (bound-and-true-p package--initialized)
  (package-initialize))

;; set source-list
(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  (add-to-list 'package-archives (cons "GNU ELPA" (concat proto "://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")) t)
  (add-to-list 'package-archives (cons "MELPA" (concat proto "://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")) t)
  (add-to-list 'package-archives (cons "Org" (concat proto "://mirrors.tuna.tsinghua.edu.cn/elpa/org/")) t))

;; refresh
(unless package-archive-contents
  (package-refresh-contents))

;; Use use-packacge to manage package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(setq use-package-always-ensure t
      use-package-always-defer t
      use-package-always-demand nil
      use-package-expand-minimally t
      use-package-verbose t)
(require 'use-package)
(require 'quelpa-use-package)

(provide 'init-package)
