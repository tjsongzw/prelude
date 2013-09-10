;;; personal-init.el --- my configuration entry point.

;;; Commentary:

;;; Code:

;; add the first level subfolders of personal automatically
(prelude-add-subfolders-to-load-path prelude-personal-dir)

;; load modules
;; (defvar prelude-personal-modules-dir (concat prelude-personal-dir "modules/"))
;; (add-to-list 'load-path prelude-personal-modules-dir)
;; (prelude-add-subfolders-to-load-path prelude-personal-modules-dir)

(require 'personal-core)
(require 'personal-complete)
(require 'personal-email)
(require 'personal-global-keybindings)
(require 'personal-linum)
(require 'personal-speedbar)
(require 'personal-org)
;;; personal-init.el ends here
