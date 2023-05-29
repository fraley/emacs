(require 'package)

(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)

; (package-initialize) necessary before require '<some-package-I-installed> works
; (example: before (require 'use-package) works, for example
(package-initialize)

(package-refresh-contents)

(package-install 'use-package)

; use 'use-package for packages (like flycheck)
(require 'use-package)

(use-package flycheck
  :ensure t
  :init (global-flycheck-mode))

(package-install 'go-mode)

(package-list-packages)
