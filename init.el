;;; init.el --- The initialization file for Emacs configuration.

;;; Commentary:

;; Use straight.el to manage packages.
;; And uses it to install latest org-mode package.

;;; Code:

;; straight.el bootstrap
(defvar bootstrap-version)

(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

;; install latest version of org
(straight-use-package 'org)

;; load the configuration file
(org-babel-load-file "~/.emacs.d/configuration.org")

(provide 'init)
;;; init.el ends here
