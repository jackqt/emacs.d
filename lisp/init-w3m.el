(maybe-require-package 'w3m)

(autoload 'w3m "w3m" "interface for w3m on emacs" t)
(autoload 'w3m-browse-url "w3m" "Ask a WWW browser to show a URL." t)
(autoload 'w3m-search "w3m-search" "Search words using emacs-w3m." t)

(setq w3m-use-cookies t)
(setq w3m-home-page "https://www.bing.com")

(setq w3m-default-display-inline-image t)
(setq w3m-default-toggle-inline-images t)

(provide 'init-w3m)
