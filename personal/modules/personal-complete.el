;;; personal-complete.el --- complete

;;; Commentary:

;;; Code:

(require 'yasnippet)
(yas-global-mode 1)
;; (setq yas/root-directory "~/.emacs.d/elpa/yasnippet-20130831.2348/snippets")
;; (yas/load-directory yas/root-directory)

(setq jedi:setup-keys t)
(setq jedi:complete-on-dot t)
(add-hook 'python-mode-hook 'jedi:setup)
(require 'auto-complete-config)
(ac-config-default)

;;; set the trigger key so that it can work together with yasnippet on tab key,
;;; if the word exists in yasnippet, pressing tab will cause yasnippet to
;;; activate, otherwise, auto-complete will
(ac-set-trigger-key "TAB")
(ac-set-trigger-key "<tab>")

(provide 'personal-complete)
;;; personal-complete.el ends here
