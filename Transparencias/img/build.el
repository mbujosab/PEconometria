(require 'org)
(require 'ob)

(setq org-confirm-babel-evaluate nil)

(org-babel-do-load-languages
 'org-babel-load-languages
 '((shell . t)
   (emacs-lisp . t)))

;; Directorio donde está build.el
(defconst my-build-root
  (file-name-directory
   (or load-file-name buffer-file-name)))

;; Abrir el fichero org
(find-file (car command-line-args-left))

;; Asegurar que existe tex/
(make-directory "tex" t)

;; Extraer todos los bloques
(org-babel-tangle)

;; Compilar figuras usando el Makefile común
(let ((makefile
       (expand-file-name "Makefile.figuras" my-build-root)))
  (call-process
   "make"
   nil
   nil
   t
   "-C" "tex"
   "-f" makefile
   "-j"
   "pngs"))

;; Ejecutar únicamente los bloques bash con :build yes
(org-babel-map-src-blocks nil
  (let* ((info   (org-babel-get-src-block-info))
         (lang   (car info))
         (params (nth 2 info)))
    (when (and (string= lang "bash")
               (equal (cdr (assoc :build params)) "yes"))
      (message "Ejecutando %s"
               (or (cdr (assoc :name params))
                   "<sin nombre>"))
      (org-babel-execute-src-block))))
