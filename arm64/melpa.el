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

; When you add new packages, do a dirdff beforehand and after.
; For example:
; %> ~/bin/dirdiff ~/.emacs.d
; %> # edit this file, ~/emacs/arm64/melpa.el, add something like (package-install 'protobuf-mode)
; %> ~/bin/dirdiff ~/.emacs.d
; --- /tmp/dirdiff__Users_pfraley_bin.prev        2023-07-24 15:57:13
; +++ /tmp/dirdiff__Users_pfraley_bin.curr        2023-07-24 15:57:13
; @@ -41,6 +41,10 @@
;    /Users/pfraley/.emacs.d/elpa/pkg-info-20150517.1143/pkg-info-pkg.el
;    /Users/pfraley/.emacs.d/elpa/pkg-info-20150517.1143/pkg-info.el
;    /Users/pfraley/.emacs.d/elpa/pkg-info-20150517.1143/pkg-info.elc
; +  /Users/pfraley/.emacs.d/elpa/protobuf-mode-20230506.330/protobuf-mode-autoloads.el
; +  /Users/pfraley/.emacs.d/elpa/protobuf-mode-20230506.330/protobuf-mode-pkg.el
; +  /Users/pfraley/.emacs.d/elpa/protobuf-mode-20230506.330/protobuf-mode.el
; +  /Users/pfraley/.emacs.d/elpa/protobuf-mode-20230506.330/protobuf-mode.elc
;    /Users/pfraley/.emacs.d/elpa/use-package-20230426.2324/dir
;    /Users/pfraley/.emacs.d/elpa/use-package-20230426.2324/doclicense.info
;    /Users/pfraley/.emacs.d/elpa/use-package-20230426.2324/docstyle.info
(package-install 'protobuf-mode)

(package-list-packages)
