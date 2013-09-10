;;; personal-global-keybindings.el --- keybindings

;;; Commentary:

;;; Code:


(global-set-key [(f1)]              'info)
(global-set-key [(f2)]              'undo)
(global-set-key [(f3)]              'redo)
(global-set-key (kbd "s-s")         'sr-speedbar-toggle)
;; (global-set-key [f4]             'kill-this-buffer)
(global-set-key (kbd "<C-s-left>")  'shrink-window-horizontally)
(global-set-key (kbd "<C-s-right>") 'enlarge-window-horizontally)
(global-set-key (kbd "<C-s-down>")  'shrink-window)
(global-set-key (kbd "<C-s-up>")    'enlarge-window)
(global-set-key [(home)]            'beginning-of-buffer)
(global-set-key [(end)]             'end-of-buffer)

(provide 'personal-global-keybindings)
;;; personal-global-keybindings.el ends here
