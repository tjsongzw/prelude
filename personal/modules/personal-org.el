;;; personal-org.el --- org

;;; Commentary:

;;; Code:

(require 'ox-md)

(org-babel-do-load-languages
 'org-babel-load-languages
 '((python . t)
   (R . t)))
(setq org-agenda-files (list "~/Git/notes/life/agenda.org"))
(provide 'personal-org)
;;; personal-org.el ends here
