; Emacs init for musicnumbers

; tidal

(add-to-list 'load-path "~/tidal/emacs")
(require 'tidal)

; Sclang for Supercollider

(require 'sclang)

; Disable startup message

(setq inhibit-startup-message t)

; Menu and bar

(menu-bar-mode -1)
(tool-bar-mode -1)
(toggle-scroll-bar -1)

;(menu-bar-mode 1)
;(tool-bar-mode 1)
;(toggle-scroll-bar 1)

;modeline

;(setq-default mode-line-format nil)

(set-face-foreground 'mode-line "black")
(set-face-background 'mode-line "white")
(set-face-background 'mode-line-inactive "white")

; Disable backup:

(setq backup-inhibited t)
(setq auto-save-default nil)

; save sessions

(desktop-save-mode 1)

; Colors (Disable if random color)

;(set-background-color "black")
;(set-foreground-color "LightCyan1")
;(set-cursor-color "sienna1")

;(global-font-lock-mode t)
;(setq font-lock-maximum-decoration t)

; Colors: highlight current line

;(global-hl-line-mode 1)
;(set-face-background 'hl-line "red4")
;(set-face-background 'modeline "dark slate gray")

;(set-face-background 'region "yellow2")
;(set-face-foreground 'region "Black")

; Random Color (disable when colors)

; Colors

;(require 'color-theme)
;(require 'color-theme-random)
;(color-theme-initialize)
;Random color theme
;(color-theme-random)
;Other way for random:
;(give-other-themes-a-chance)
;Choose color theme
;(color-theme-andreas)
;(color-theme-aliceblue)

;fullscreen [f11]

(defun my-fullscreen ()
  (interactive)
  (set-frame-parameter nil 'fullscreen 'fullboth) ;this makes the frame go fullscreen
  (tool-bar-mode -1) ;these 3 lines turn off GUI junk
  (scroll-bar-mode -1)
  (menu-bar-mode -1))

(defun my-non-fullscreen ()
  (interactive)
  (set-frame-parameter nil 'width 82)
  (set-frame-parameter nil 'fullscreen 'fullheight)
  (menu-bar-mode t)) ;I don't turn tool-bar and scroll-bar back on b/c I never want them

(defun toggle-fullscreen ()
  (interactive)
  (if (eq (frame-parameter nil 'fullscreen) 'fullboth)  ;tests if already fullscreened
      (my-non-fullscreen)
    (my-fullscreen)))

 
(global-set-key (kbd "<f11>") 'toggle-fullscreen) 

;tranparency

;(set-frame-parameter (selected-frame) 'alpha '(60 60))
;(add-to-list 'default-frame-alist '(alpha 60 60))

; copy paste

(setq x-select-enable-clipboard t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; font

(set-default-font "Inconsolata 20")

; disable bell

(setq bell-volume 0)
(setq visible-bell t)

; Display clock

(display-time)

; Add color to a shell running 'M-x shell' or [f6]

(autoload 'ansi-color-for-comint-mode-on "ansi-color" nil t)
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

; Shell history

(add-hook 'shell-mode-hook 'n-shell-mode-hook)
(defun n-shell-mode-hook ()
	"Shell mode customs."
	(local-set-key '[up] 'n-shell-up1line)
	(local-set-key '[down] 'n-shell-down1line)
	(local-set-key '[(shift tab)] 'commint-next-matching-input-from-input)
	(setq comint-input-sender 'n-shell-simple-send)
	)
(defun n-shell-up1line()
	"Insert previus input"
	(interactive)
	(if (not (comint-after-pmark-p)) ( forward-line -1)
		(comint-previous-input 1) ))

(defun n-shell-down1line()
	"Insert next input"
	(interactive)
	(if (not (comint-after-pmark-p)) ( forward-line 1)
		(comint-previous-input 1) ))

(defun comint-after-pmark-p ()
	"Return."
	(let ((pmark (process-mark (get-buffer-process (current-buffer)))))
		(<= (marker-position pmark) (point))))

(defun n-shell-simple-send (proc command)
	"Commands."
	(cond
		((string-match "^[ \t]*clear[ \t]*$" command)
		 (comint-send-string proc "\n")
		 (erase-buffer)
		 )
		((string-match "^[ \t]*man[ \t]*" command)
		 (commint-send-string proc "\n")
		 (setq command (replace-regexp-in-string "^[ \t]*man[ \t]*" "" command))
		 (setq command (replace-regexp-in-string "[ \t]+$" "" command))
		 (funcall 'man command)
		 )
		(t (comint-simple-send proc command))
		)
	)

; Insert date and time function

(defvar current-date-time-format "nx%Y-%m-%d_%H_%M_%S")

(defun insert-current-date-time ()
	(interactive)
	(insert (format-time-string current-date-time-format (current-time)))
	)

; Yes or no for y or n

(fset 'yes-or-no-p 'y-or-n-p)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Short-cut keys

(define-key global-map [f5] 'goto-line)
(define-key global-map [f6] 'shell)
(define-key global-map [f7] 'rename-uniquely)
(define-key global-map [f8] 'insert-current-date-time)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(put 'upcase-region 'disabled nil)

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(display-time-mode t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "white" :foreground "black" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :foundry "unknown" :family "Inconsolata")))))
