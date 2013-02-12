(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

(defun ato/install-packages (list)
  (dolist (pkg list)
    (unless (package-installed-p pkg)
      (package-install pkg))))

(ato/install-packages '(zenburn-theme clojure-mode nrepl paredit))
(load-theme 'zenburn t)
(add-hook 'clojure-mode-hook 'paredit-mode)

