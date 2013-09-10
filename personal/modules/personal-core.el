;;; personal-core.el --- core

;;; Commentary:

;;; Code:


;; (display-time-mode 1)
;; (setq display-time-24hr-format t)
;; (setq display-time-day-and-date t)
;; (setq display-time-interval 10)

;; make the fringe stand out from the background
(setq solarized-distinct-fringe-background t)
;; make the modeline high contrast
;; (setq solarized-high-contrast-mode-line t)

(disable-theme 'zenburn)
(load-theme 'solarized-dark t)

(setq tramp-default-method "ssh")

(setq user-full-name "Song Zhongwen")
(setq user-mail-address "tjsongzw@gmail.com")


(setq browse-url-browser-function 'browse-url-generic
      browse-url-generic-program "google-chrome")

(setq prelude-guru nil)
;; (setq prelude-whitespace nil)

(setq read-buffer-completion-ignore-case t)
(setq read-file-name-completion-ignore-case t)

(scroll-bar-mode -1)

(add-to-list 'default-frame-alist '(font . "-unknown-DejaVu Sans Mono-normal-normal-normal-*-13-*-*-*-m-0-iso10646-1"))
;; (set-face-font 'default "-unknown-DejaVu Sans-normal-normal-normal-*-12-*-75-75-*-0-iso10646-1")
;; (set-default-font "dejavu sans mono:pixelsize=13")
;; (add-to-list 'default-frame-alist
;;              '(font . "DejaVu Sans Mono-10.5"))

(setq frame-title-format
      '(buffer-file-name "%f"
                         (dired-directory dired-directory "%b")))

(setq default-major-mode 'text-mode)

(auto-compression-mode t)

(auto-image-file-mode t)

(setq make-backup-files nil)
(setq auto-save-default nil)

(guru-global-mode 0)
;; (setq visible-bell t)
;; (setq-default cursor-type 'bar)



;; set up unicode
;; keyboard / input method settings
;; (setq locale-coding-system              'utf-8)
;; (set-terminal-coding-system             'utf-8)
;; (set-keyboard-coding-system             'utf-8)
;; (set-selection-coding-system            'utf-8)
;; (set-language-environment               'UTF-8) ; prefer utf-8 for language settings
;; (set-default-coding-systems             'utf-8)
;; (setq default-buffer-file-coding-system 'utf-8)
;; (setq x-select-request-type             '(UTF8_STRING COMPOUND_TEXT TEXT STRING))
;; (prefer-coding-system                   'utf-8)
;; (setq buffer-file-coding-system         'utf-8-unix)
;; (setq default-file-name-coding-system   'utf-8-unix)
;; (setq default-keyboard-coding-system    'utf-8-unix)
;; (setq default-process-coding-system     '(utf-8-unix . utf-8-unix))
;; (setq default-sendmail-coding-system    'utf-8-unix)
;; (setq default-terminal-coding-system    'utf-8-unix)

;; (prefer-coding-system 'utf-8)
;; (set-default-coding-systems 'utf-8)
;; (set-terminal-coding-system 'utf-8)
;; (set-keyboard-coding-system 'utf-8)

(provide 'personal-core)

;;; personal-core.el ends here
