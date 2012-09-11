(add-to-list 'load-path "~/.emacs.d/")
(setq make-backup-files nil) 
(setq large-file-warning-threshold 1000000000)

(require 'linum)
(global-linum-mode)
(setq display-time-day-and-date t
    display-time-12hr-format t)
(display-time)

(delete-selection-mode t)

;; Ensures that the arrow keys work even within screen
(define-key function-key-map "\eOA" [up])
(define-key function-key-map "\e[A" [up])
(define-key function-key-map "\eOB" [down])
(define-key function-key-map "\e[B" [down])
(define-key function-key-map "\eOC" [right])
(define-key function-key-map "\e[C" [right])
(define-key function-key-map "\eOD" [left])
(define-key function-key-map "\e[D" [left])

(setq auto-mode-alist (cons '("\\.hql$" . sql-mode) auto-mode-alist))

(add-to-list 'load-path "~/.emacs.d/color-theme/")
(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     (color-theme-hober)))

(add-to-list 'load-path "~/.emacs.d/color-theme/themes/emacs-color-theme-solarized")
(require 'color-theme-solarized)
