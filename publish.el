(require 'package)

(package-initialize)

(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("org" . "http://orgmode.org/elpa/")))

(package-refresh-contents)

(unless (package-installed-p 'use-package)
  (package-install 'use-package))
(require 'use-package)
(setq use-package-always-ensure t)

(use-package htmlize)
(use-package emacsql-sqlite3)
(use-package org-roam
  :ensure t
  :init
  ;; Disable v2 warning message
  (setq org-roam-v2-ack t)
  :custom
  ;; Roam Notes directory
  (org-roam-directory "/opt/OrgFiles")
  :config
  (org-roam-setup))

(require 'ox-publish)
(require 'ox-html)
(require 'htmlize)
(require 'org-roam)

(setq make-backup-files nil)

(defun publish ()
  (message "kerchow"))
