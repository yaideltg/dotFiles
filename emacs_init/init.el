;;
;; DEFINE AND INITIALISE PACKAGE REPOSITORIES
;;
(require 'package)

;; Add MELPA to the packages list
(add-to-list 'package-archives
 	     '("melpa" . "https://melpa.org/packages/"))

;; Highest number gets priority (what is not mentioned has priority 0)
(setq package-archive-priorities
      '(("gnu" . 2)
        ("nongnu" . 1)))

(package-initialize)

;; USE-PACKAGE TO SIMPLIFY THE CONFIG FILE
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)
(setq use-package-always-ensure 't)


(use-package org)
(org-babel-load-file (expand-file-name "~/config/dotFiles/emacs_init/dot_emacs.org"))

