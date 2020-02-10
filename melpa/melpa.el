(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/"))
(package-initialize)

; (package-install 'flymake-easy)
; (package-install 'flymake-cursor)
; (package-install 'json-mode)
; (package-install 'flymake-json)
; (package-install 'protobuf-mode)
; (package-install 'go-mode)

(package-install 'ivy-hydra)
(package-install 'elpy)
(package-install 'py-autopep8)
