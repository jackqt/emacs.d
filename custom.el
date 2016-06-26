;;; package --- Summary
;;; Commentary:
;;; code:
(setq default-directory "~/")	  ; 设置打开文件的缺省路径

;; Personal Info
(setq user-full-name "LiQingTian")
(setq user-mail-address "jack.qingtian@outlook.com")	  ; 设置有用的个人信息,这在很多地方有用。

;; Language Setting
(set-language-environment 'Chinese-GB)
(set-keyboard-coding-system 'utf-8)
(set-clipboard-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-selection-coding-system 'utf-8)
(modify-coding-system-alist 'process "*" 'utf-8)
(setq default-process-coding-system '(utf-8 . utf-8))
(setq-default pathname-coding-system 'utf-8)
(set-file-name-coding-system 'utf-8)

;;MY CUSTOMIZE
(global-linum-mode 1)
(setq column-number-mode t)             ;显示列号
(display-time-mode 1);显示时间，格式如下
(setq display-time-day-and-date t)
(transient-mark-mode t);允许临时设置标记
(setq frame-title-format '("" buffer-file-name "@emacs" ));在标题栏显示buffer名称
(setq inhibit-startup-message t) ; 关闭emacs启动时的画面
(setq mouse-yank-at-point t)	;不在鼠标点击的那个地方插入剪贴板内容
(setq kill-ring-max 200)	; 设置粘贴缓冲条目数量
(setq x-select-enable-clipboard t) ; 允许emacs和外部其他程序的粘贴
(setq global-font-lock-mode t)	  ;进行语法加亮。
(setq mouse-avoidance-mode 'animate) ;光标靠近鼠标指针时，让鼠标指针自动让开，别挡住视线。
(setq make-backup-files nil) ;不产生备份文件
(display-time) ; 显示时间
(setq sentence-end "\\([。！？]\\|……\\|[.?!][]\"')}]*\\($\\|[ \t]\\)\\)[ \t\n]*")
(setq sentence-end-double-space nil)	 ; 设置 sentence-end 可以识别中文标点。不用在 fill 时在句号后插入两个空格。
(setq enable-recursive-minibuffers t)	  ; 可以递归的使用 minibuffer
(setq scroll-margin 3 scroll-conservatively 10000) ;防止页面滚动时跳动， scroll-margin 3 可以在靠近屏幕边沿3行时就开始滚动，可以很好的看到上下文

;; 设置tab宽度
(setq-default tab-width 4)
(setq tab-width 4)
;; 将tab替换为空格
(setq-default indent-tabs-mode nil)
(setq indent-tabs-mode nil)

;=========================================END==============================================;
;=========================================START C====================================;
;; c-mode设置
;; c-mode公共设置
(defun my-c-mode-common-hook ()
  (setq tab-width 4)
  (hs-minor-mode t))
(add-hook 'c-mode-common-hook 'my-c-mode-common-hook)

(load-library "hideshow")
(add-hook 'c-mode-hook 'hs-minor-mode)
(add-hook 'c++-mode-hook 'hs-minor-mode)
(add-hook 'java-mode-hook 'hs-minor-mode)
(add-hook 'perl-mode-hook 'hs-minor-mode)
(add-hook 'php-mode-hook 'hs-minor-mode)
(add-hook 'emacs-lisp-mode-hook 'hs-minor-mode)
;;能把一个代码块缩起来，需要的时候再展开
;; M-x				hs-minor-mode
;; C-c @ ESC C-s	show all
;; C-c @ ESC C-h	hide all
;; C-c @ C-s		show block
;; C-c @ C-h		hide block
;; C-c @ C-c toggle hide/show

;; C语言设置
(defun my-c-mode-hook ()
(c-set-style "cc-mode"))
(add-hook 'c-mode-hook 'my-c-mode-hook)

;; C++设置
(defun my-c++-mode-hook ()
(c-set-style "stroustrup"))
(add-hook 'c++-mode-hook 'my-c++-mode-hook)

;;=========================================END==============================================;

;;HOT KEY
;;保留F3、F4、F5、F6、F7、F8 for Xrefactory
(global-set-key [f1] 'eshell)							   ; 进入shell
(global-set-key [f2] 'calendar)
(global-set-key [f10] 'speedbar)						  ; 启动/关闭speedbar

(global-set-key (kbd "C-;") 'comment-or-uncomment-region) ; 注释 / 取消注释
(global-set-key [C-tab] 'other-window)					  ; 切换窗口
(global-set-key [M-return] 'delete-other-windows)		  ; 关闭其他窗口
(global-set-key "\C-xk" 'kill-this-buffer)				  ; 关闭当前buffer
(global-set-key (kbd "S-<SPC>") 'set-mark-command)        ;用shift+space 来 setmark 了, C-@ 很不好按。

(global-set-key [M-/] 'hippie-expand) ; 补全命令 右Ctrl+\ 自动补全menu

(global-set-key [(control return)] 'semantic-ia-complete-symbol-menu)
(global-set-key [M-g] 'goto-line)
;;=========================================END==============================================;

(setq org2blog/wp-blog-alist
      '(("blog-name"
         :url "http://blog.inotelife.com/xmlrpc.php"
         :username "jack"
         :default-title "Untitle Article"
         :default-categories ("org2blog" "emacs")
         :tags-as-categories nil)))

(provide 'custom)
;;; custom.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("4cf3221feff536e2b3385209e9b9dc4c2e0818a69a1cdb4b522756bcdf4e00a4" default)))
 '(session-use-package t nil (session)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
