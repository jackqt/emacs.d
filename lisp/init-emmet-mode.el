;;; package -- Summary
;;; Commentary:
;;; Code:
(maybe-require-package 'emmet-mode)

(add-hook 'html-mode-hook 'emmet-mode) ;; Auto-start on any markup modes
(add-hook 'css-mode-hook  'emmet-mode) ;; enable Emmet's css abbreviation.

(setq emmet-move-cursor-between-quotes t) ;; Put the cursor between first empty quotes after expanding

(provide 'init-emmet-mode)
;;; init-emmet-mode ends here
