;;; personal-speedbar.el --- core

;;; Commentary:

;;; Code:


(require 'sr-speedbar)
(setq sr-speedbar-right-side nil)

;; don't refresh on buffer changes
;; (setq sr-speedbar-auto-refresh nil)

;; (make-face 'speedbar-face)
;; ;; (set-face-font 'speedbar-face "San-9")  ;
;; (set-face-font 'speedbar-face "-unknown-DejaVu Sans Mono-normal-normal-normal-*-12-*-*-*-m-0-iso10646-1")
;; (setq speedbar-mode-hook '(lambda () (buffer-face-set 'speedbar-face)))
;; (add-hook 'speedbar-mode-hook '(lambda () (linum-mode -1)))
(setq speedbar-show-unknown-files t)
(setq speedbar-use-images nil)
(setq speedbar-tag-hierarchy-method '(speedbar-prefix-group-tag-hierarchy))
(speedbar-add-supported-extension ".md")
(speedbar-add-supported-extension ".config")
;; set default path for speedbar
;; (add-hook 'speedbar-mode-hook
;;           (lambda ()
;;             (cd "~/path/")))

;; (require 'tabbar)
;; (tabbar-mode t)

;; ;; speedbar
;; (require 'speedbar)
;; (autoload 'speedbar-frame-mode "speedbar" "Popup a speedbar frame" t)
;; (autoload 'speedbar-get-focus "speedbar" "Jump to speedbar frame" t)
;; ;; (add-hook 'speedbar-mode-hook
;; ;;           (lambda ()
;; ;;             (auto-raise-mode 1)
;; ;;             (add-to-list 'speedbar-frame-parameters '(top . 25))
;; ;;             (add-to-list 'speedbar-frame-parameters '(left . 0))
;; ;;             ))
;; (global-set-key [(f4)]              'speedbar-get-focus)

(provide 'personal-speedbar)
;;; personal-speedbar.el ends here


