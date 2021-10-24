(package-initialize)

(require 'use-package)
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

(require 'htmlize)
(require 'ox-publish)

(setq org-id-extra-files (org-roam-list-files))

;; Define the publishing project
(setq org-publish-project-alist
      (list
       (list "org-files"
             :recursive t
             :base-directory "/opt/OrgFiles"
             :exclude ".*[Tt]emplates/.*\\|.*[Pp]rojects/.*\\|.*[Dd]ailies/.*"
             :publishing-directory "/opt/OrgFiles/web-site"
             :publishing-function 'org-html-publish-to-html)))

;; Generate the site output
(org-publish-all t)
