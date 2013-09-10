;;; personal-email.el --- email

;;; Commentary:

;;; Code:

(require 'mu4e)
(require 'org-mu4e)
(require 'smtpmail)

;; default
(setq mu4e-maildir "~/.Mail"
      mu4e-drafts-folder "/[Gmail]/Drafts"
      mu4e-sent-folder   "/[Gmail]/Sent Mail"
      mu4e-trash-folder  "/[Gmail]/Trash"
      ;; setup some handy shortcuts
      ;; you can quickly switch to your Inbox -- press ``ji''
      ;; then, when you want archive some messages, move them to
      ;; the 'All Mail' folder by pressing ``ma''.
      mu4e-maildir-shortcuts
      '(("/INBOX"               . ?i)
        ;; ("/[Gmail].IMPORTANT"   . ?!)
        ("/[Gmail]/Sent Mail"   . ?s)
        ("/[Gmail]/Trash"       . ?t)
        ;; ("/[Gmail].All Mail"    . ?a)
        ("/[Gmail]/Drafts"      . ?d))
      ;; don't save message to Sent Messages, Gmail/IMAP takes care of this
      mu4e-sent-messages-behavior 'delete
      ;; allow for updating mail using 'U' in the main view:
      mu4e-get-mail-command "offlineimap"
      ;; update every 5 minutes
      ;; mu4e-update-interval 300
      ;; mu4e-update-interval 60
      ;; something about ourselves
      user-mail-address "tjsongzw@gmail.com"
      user-full-name  "Zhongwen Song"
      message-signature
      (concat
       "Zhongwen Song(宋中文)\n"
       "tjsongzw@gmail.com\n"
       "\n")
      ;; sending mail -- replace USERNAME with your gmail username
      ;; also, make sure the gnutls command line utils are installed
      ;; package 'gnutls-bin' in Debian/Ubuntu
      message-send-mail-function 'smtpmail-send-it
      smtpmail-stream-type 'starttls
      smtpmail-starttls-credentials '(("smtp.gmail.com" 587 nil nil))
      smtpmail-auth-credentials (expand-file-name "~/.authinfo.gpg")
      smtpmail-default-smtp-server "smtp.gmail.com"
      smtpmail-smtp-server "smtp.gmail.com"
      smtpmail-smtp-service 587
      ;; don't keep message buffers around
      message-kill-buffer-on-exit t)

;; (add-hook 'mu4e-index-updated-hook
;;           (defun new-mail-sound ()
;;             (shell-command "aplay ~/Music/Sounds/beach-wave-01.wav&")))
(setq mu4e-attachment-dir  "~/Downloads")
;; use 'fancy' non-ascii characters in various places in mu4e
(setq mu4e-use-fancy-chars t)
;; attempt to show images when viewing messages
(setq
 mu4e-view-show-images t
 mu4e-view-image-max-width 800)
;; enable inline images
(setq mu4e-view-show-images t)
;; use imagemagick, if available
(when (fboundp 'imagemagick-register-types)
  (imagemagick-register-types))
(setq mu4e-view-prefer-html t)
;; convert org mode to HTML automatically
(setq org-mu4e-convert-to-html t)

;; need this to convert some e-mails properly
;; (setq mu4e-html2text-command "html2text -utf8 -width 72")
(setq mu4e-html2text-command "html2text -utf8 -width 79")
;; (setq mu4e-html2text-command
;;       "html2markdown | grep -v '&nbsp_place_holder;'")
(setq mail-user-agent 'mu4e-user-agent)

;; message view action
(defun mu4e-msgv-action-view-in-browser (msg)
  "View the body of the message in a web browser."
  (interactive)
  (let ((html (mu4e-msg-field (mu4e-message-at-point t) :body-html))
        (tmpfile (format "%s/%d.html" temporary-file-directory (random))))
    (unless html (error "No html part for this message"))
    (with-temp-file tmpfile
      (insert
       "<html>"
       "<head><meta http-equiv=\"content-type\""
       "content=\"text/html;charset=UTF-8\">"
       html))
    (browse-url (concat "file://" tmpfile))))
(add-to-list 'mu4e-view-actions
             '("View in browser" . mu4e-msgv-action-view-in-browser) t)

;; attach file using dired
(require 'gnus-dired)
;; make the `gnus-dired-mail-buffers' function also work on
;; message-mode derived modes, such as mu4e-compose-mode
(defun gnus-dired-mail-buffers ()
  "Return a list of active message buffers."
  (let (buffers)
    (save-current-buffer
      (dolist (buffer (buffer-list t))
        (set-buffer buffer)
        (when (and (derived-mode-p 'message-mode)
                   (null message-sent-message-via))
          (push (buffer-name buffer) buffers))))
    (nreverse buffers)))
(setq gnus-dired-mail-mode 'mu4e-user-agent)
(add-hook 'dired-mode-hook 'turn-on-gnus-dired-mode)

(defalias 'org-mail 'org-mu4e-compose-org-mode)
(defalias 'mail 'mu4e)
(defalias 'gmail 'mu4e)
;; (add-hook 'mu4e-mode-hook '(lambda () (linum-mode -1)))

(provide 'personal-email)

;;; personal-email.el ends here
