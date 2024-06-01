;;; package --- Summary
(require 'package)

(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)

;;; Commentary:
; (package-initialize) necessary before require '<some-package-I-installed> works
; (example: before (require 'use-package) works, for example
(package-initialize)

(package-refresh-contents)

(package-install 'use-package)

;;; Commentary:
; use 'use-package for packages (like flycheck)
(require 'use-package)

(use-package flycheck
  :ensure t
  :init (global-flycheck-mode))

(package-install 'go-mode)

;;; Commentary:
; https://stackoverflow.com/questions/58202993/emacs-failed-to-verify-signature-archive-contents-sig
; https://emacs.stackexchange.com/questions/233/how-to-proceed-on-package-el-signature-check-failure
(package-install 'gnu-elpa-keyring-update)

;;; Commentary:
; When looking for support for things like yaml, search google for yaml-mode.
; Compare that with what you get when you do M-x:package-list-packages, search
; for yaml-mode in that buffer and hit <enter> on yaml-mode.  In that example,
; you will see the same result: https://github.com/yoshiki/yaml-mode.
;
; When adding new packages, do a dirdff beforehand
; 1) ~/bin/dirdiff ~/.emacs.d # reset dirdiff list
; 2) add package to the list below, for example: (package-install 'protobuf-mode)
; 3) M-x: load-file # ~/emacs/arm64/melpa.el
; 4) ~/bin/dirdiff ~/.emacs.d # again, see new packages below
;
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
;
; To update already installed packages:
; https://stackoverflow.com/questions/14836958/updating-packages-in-emacs
; 1) ~/bin/dirdiff ~/.emacs.d # reset dirdiff list
; 2) (package-list-packages)
; 3) U - runs package-menu-mark-upgrades
; 4) x - runs package-menu-execute
; 5) ~/bin/dirdiff ~/.emacs.d # again, see updates to existing packages

(package-install 'protobuf-mode)
(package-install 'json-mode)
(package-install 'yaml-mode)
(package-install 'go-dlv)

(package-list-packages)
