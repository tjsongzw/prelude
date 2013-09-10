;;; personal-linum.el --- my configuration entry point.

;;; Commentary:

;;; Code:

;; (global-linum-mode t)
(require 'linum)
(setq linum-disabled-modes-list '(eshell-mode
                                  term-mode
                                  ;; wl-summary-mode
                                  compilation-mode
                                  dired-mode
                                  speedbar-mode
                                  mu4e-main-mode
                                  mu4e-about-mode
                                  mu4e-view-mode
                                  mu4e-headers-mode
                                  doc-view-mode))
(defun linum-on ()
  (unless (or (minibufferp) (member major-mode linum-disabled-modes-list)
              (and (not (eq (buffer-name) "*scratch*"))
                   (string-match "*" (buffer-name))))
    (linum-mode 1)))
(global-linum-mode 1)
(setq linum-eager nil)

;; (require 'linum)
;; (global-linum-mode 1)
;; (defun linum-on ()
;;   (unless (or (minibufferp) (member major-mode linum-disabled-modes-list))
;;     (linum-mode 1)))

;; (setq linum-disabled-modes-list '(mu4e-headers-mode mu4e-view-mode mu4e-main))
;; (add-hook 'eshell-mode-hook '(lambda () (linum-mode -1)))
;; (add-hook 'term-mode-hook '(lambda () (linum-mode -1)))
;; (setq linum-format " %2d\u2502")
;; (setq line-number-mode t)
;; (setq column-number-mode t)

(provide 'personal-linum)
;;; personal-linum.el ends here
