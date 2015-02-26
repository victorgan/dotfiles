;; Enable evil mode
(add-to-list 'load-path "~/.emacs.d/evil")
(require 'evil)
(evil-mode 1)

;; Disable backup ~ files
(setq make-backup-files nil)
