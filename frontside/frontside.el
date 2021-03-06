;; This is a catch all file for emacs configuration.
;; If there isn't a specific area for it, then it gets blopped in
;; here. You might find what you're looking for at:

;; frontside/javascript.el
;; frontside/ruby.el
;; frontside/web.el


(custom-set-variables
 '(projectile-switch-project-action (quote projectile-dired)))


(prelude-require-packages '(pcre2el ag))

;;(disable-theme 'zenburn)
(prelude-require-packages '(frame-fns frame-cmds))

;; YAS snippets everywhere bro.
(prelude-require-package 'yasnippet)
(yas-global-mode)


;; Enable whitespace mode for code
(add-hook 'prog-mode-hook 'prelude-enable-whitespace)
(add-hook 'coffee-mode-hook 'prelude-enable-whitespace)

;; enable colors in compilation buffer
(require 'ansi-color)
(defun colorize-compilation-buffer ()
  (toggle-read-only)
  (ansi-color-apply-on-region (point-min) (point-max))
  (toggle-read-only))
(add-hook 'compilation-filter-hook 'colorize-compilation-buffer)

;; let's add support for multiple cursors
(prelude-require-package 'multiple-cursors)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)

;; make the default search use Ag
(define-key projectile-mode-map (kbd "s-g") 'projectile-ag)

(prelude-require-package 'comment-dwim-2)
(define-key prelude-mode-map (kbd "s-/") 'comment-dwim-2)
(define-key prelude-mode-map (kbd "C-c /") 'comment-dwim-2)

;; smart parens configuration
(require 'smartparens-config)
(smartparens-global-mode)
(customize-set-variable 'sp-autoescape-string-quote nil)
;; Disable smartparens-mode when using multiple cursors. they don't play well together
(require 'multiple-cursors)
(add-to-list 'mc/unsupported-minor-modes 'smartparens-mode)

;; drag stuff rules!
(prelude-require-package 'drag-stuff)
(drag-stuff-global-mode)
(drag-stuff-define-keys)

;; this enables the dragstuff keys in terminal mode for iterm2
(add-hook 'tty-setup-hook
          '(lambda ()
             (define-key function-key-map "\e[1;9A" [M-up])
             (define-key function-key-map "\e[1;9B" [M-down])
             (define-key function-key-map "\e[1;9C" [M-right])
             (define-key function-key-map "\e[1;9D" [M-left])))

;; Twitter
(setq twittering-icon-mode t)
(setq twittering-use-icon-storage t)

;; setup multiterm
(setq multi-term-program "/bin/zsh")
(add-hook 'term-mode-hook
          (lambda ()
            (setq term-buffer-maximum-size 10000)))
(add-hook 'term-mode-hook
          (lambda ()
            (setq show-trailing-whitespace nil)))

;; this stuff only loads when not in the terminal
(when window-system
  ;; Cats!
  (prelude-require-package 'nyan-mode)
  (nyan-mode))

;;setup discover
(prelude-require-package 'discover)
(global-discover-mode 1)

(global-set-key (kbd "C-z") 'undo)
(global-set-key (kbd "s-f") 'projectile-find-file)
(global-set-key (kbd "s-d") 'projectile-find-dir)

;; make ido choices appear vertically.
(prelude-require-package 'ido-vertical-mode)
(ido-vertical-mode)
(setq ido-vertical-define-keys 'C-n-and-C-p-only)

;; Line numbers always on in prog-mode
(add-hook 'prog-mode-hook 'linum-mode)

(provide 'frontside)
;;; frontside.el ends here
