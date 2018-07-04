(set-background-color "DarkSlateGray")

;; color de las letras
(set-foreground-color "LightCyan")

;; cursor en rojo
(set-cursor-color "red")

;; activar mostrado de seleccion
(delete-selection-mode 1)

;; cargado del modo js2
; (load-file "~/js2.elc")
; (add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

;(add-hook 'c-mode-common-hook
;          (lambda ()
;            (c-set-style "linux")))

(setq c-basic-offset 4)
(setq-default indent-tabs-mode nil) ; always replace tabs with spaces
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t)
 '(js2-basic-offset 4))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )


; @begin(51508759)@ - Do not edit these lines - added automatically!
(if (file-exists-p "/home/dani/universidad/tercero/prolog/CiaoDE-1.13.0-13089/emacs-mode/ciao-mode-init.el")
(load-file "/home/dani/universidad/tercero/prolog/CiaoDE-1.13.0-13089/emacs-mode/ciao-mode-init.el")
)
; @end(51508759)@ - End of automatically added lines.


; ido interaction
(require 'ido)
(ido-mode t)
(setq ido-enable-flex-matching t) ;; enable fuzzy matching

; Disable backup files
(setq make-backup-files nil)

;; (add-hook ’LaTeX-mode-hook ’turn-on-reftex) ; Activar reftex con AucTeX
;; (setq reftex-plug-into-AUCTeX t) ; Conectar a AUC TeX con RefTeX

;; (setq TeX-default-mode ’"LaTeX-mode") ; Modo ordinario para ficheros .tex
;; (setq TeX-force-default-mode t) ; Activar siempre dicho modo.

(add-to-list 'load-path "/home/dani/tools/matlab/matlab-emacs/matlab-emacs")
(autoload 'matlab-mode "matlab" "Enter MATLAB mode." t)
(setq auto-mode-alist (cons '("\\.m\\'" . matlab-mode) auto-mode-alist))
(autoload 'matlab-shell "matlab" "Interactive MATLAB mode." t)

;; Connection to the shadow machine of the E2ESPM in ESRIN
(defun connect-e2espm-shadow ()
  (interactive)
  (dired "/e2espm@10.182.17.43:/"))

;; Connection to the operational machine of the E2ESPM in ESRIN
(defun connect-e2espm-op ()
  (interactive)
  (dired "/e2espm@10.182.17.22:/"))

(require 'iso-transl)
