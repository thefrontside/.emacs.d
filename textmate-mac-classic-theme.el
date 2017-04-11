(deftheme textmate-mac-classic
  "Created 2015-04-15.")

(custom-theme-set-faces
 'textmate-mac-classic
 '(default ((t (:inherit nil :stipple nil :background "#FFF" :foreground "#000" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :foundry "nil" :family "Menlo"))))
 '(cursor ((t (:background "#A7A7A7" :foreground "#DCDCCC"))))
 '(fixed-pitch ((t (:family "Monospace"))))
 '(variable-pitch ((t (:family "Sans Serif"))))
 '(escape-glyph ((t (:weight bold :foreground "#F0DFAF"))))
 '(minibuffer-prompt ((t (:foreground "#000"))))
 '(highlight ((t (:background "#426BEE"))))
 '(region ((t (:background "#E4F1FE"))))
 '(shadow ((((class color grayscale) (min-colors 88) (background light)) (:foreground "grey50")) (((class color grayscale) (min-colors 88) (background dark)) (:foreground "grey70")) (((class color) (min-colors 8) (background light)) (:foreground "green")) (((class color) (min-colors 8) (background dark)) (:foreground "yellow"))))
 '(secondary-selection ((t (:background "#5F5F5F"))))
 '(trailing-whitespace ((t (:background "#CC9393"))))
 '(font-lock-builtin-face ((t (:weight bold :foreground "#DCDCCC"))))
 '(font-lock-comment-delimiter-face ((t (:foreground "#B2B2B2"))))
 '(font-lock-comment-face ((t (:foreground "#B2B2B2" :slant italic))))
 '(font-lock-constant-face ((t (:foreground "#D61619" :weight bold))))
 '(font-lock-doc-face ((t (:foreground "#B2B2B2"))))
 '(font-lock-function-name-face ((t (:foreground "#1B1CAB" :weight bold))))
 '(font-lock-keyword-face ((t (:foreground "#2C2CF6" :weight bold))))
 '(font-lock-negation-char-face ((t (:foreground "#2C2CF6" :weight bold))))
 '(font-lock-preprocessor-face ((t (:foreground "#3596A4"))))
 '(font-lock-regexp-grouping-backslash ((t (:foreground "#00BD41"))))
 '(font-lock-regexp-grouping-construct ((t (:weight bold :foreground "#F0DFAF"))))
 '(font-lock-string-face ((t (:foreground "#007B22"))))
 '(font-lock-type-face ((t (:foreground "#7175F0"))))
 '(font-lock-variable-name-face ((t (:foreground "#3596A4"))))
 '(font-lock-warning-face ((t (:weight bold :foreground "#D0BF8F"))))
 '(button ((t (:underline (:color foreground-color :style line)))))
 '(link ((t (:weight bold :underline (:color foreground-color :style line) :foreground "#F0DFAF"))))
 '(link-visited ((t (:weight normal :underline (:color foreground-color :style line) :foreground "#D0BF8F"))))
 '(fringe ((t (:background "#FFF"))))
 '(header-line ((t (:box (:line-width -1 :color nil :style released-button) :foreground "#F0DFAF" :background "#2B2B2B"))))
 '(tooltip ((t (:foreground "black" :background "lightyellow" :inherit (variable-pitch)))))
 '(mode-line ((t (:background "#2A358D" :foreground "#FFF" :inverse-video nil :box (:line-width -1 :style released-button)))))
 '(mode-line-buffer-id ((t (:weight bold :inherit (sml/filename)))))
 '(mode-line-emphasis ((t (:weight bold))))
 '(mode-line-highlight ((((class color) (min-colors 88)) (:box (:line-width 2 :color "grey40" :style released-button))) (t (:inherit (highlight)))))
 '(mode-line-inactive ((t (:background "#DDD" :foreground "#000" :inverse-video nil :box (:line-width -1 :style released-button)))))
 '(isearch ((t (:weight bold :foreground "#D0BF8F" :background "#5F5F5F"))))
 '(isearch-fail ((t (:foreground "#DCDCCC" :background "#8C5353"))))
 '(lazy-highlight ((t (:weight bold :foreground "#D0BF8F" :background "#383838"))))
 '(match ((t (:weight bold :foreground "#DFAF8F" :background "#2B2B2B"))))
 '(next-error ((t (:inherit (region)))))
 '(query-replace ((t (:inherit (isearch))))))

(provide-theme 'textmate-mac-classic)
