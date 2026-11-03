;;; mb-org-export-filters.el --- filtros de exportación compartidos -*- lexical-binding: t; -*-

(defun mb/org-export-drop-htmlonly (tree backend info)
  "Elimina, solo al exportar a backends derivados de LaTeX, los
árboles cuyo titular esté etiquetado :htmlonly:. Así, una misma
sección puede aparecer en la exportación HTML y desaparecer en la
exportación a PDF, sin duplicar el fichero .org."
  (when (org-export-derived-backend-p backend 'latex)
    (org-element-map tree 'headline
      (lambda (hl)
        (when (member "htmlonly" (org-export-get-tags hl info))
          (org-element-extract-element hl)))))
  tree)

(add-to-list 'org-export-filter-parse-tree-functions #'mb/org-export-drop-htmlonly)

(defun mb/org-flatten-custom-id-links ()
  "Sustituye en el buffer actual cada enlace interno [[#ancla][texto]]
por su texto (y [[#ancla]] por el nombre del ancla). Se usa solo antes
de exportar a cuaderno ipynb: ox-ipynb convierte esos enlaces en
«[ancla]» y pierde el texto, porque los reserva para citas
bibliográficas. No guarda el fichero."
  (save-excursion
    (goto-char (point-min))
    (while (re-search-forward "\\[\\[#\\([^]]+\\)\\]\\(?:\\[\\(.*?\\)\\]\\)?\\]" nil t)
      (replace-match (or (match-string 2) (match-string 1)) t t)))
  (set-buffer-modified-p nil))

(provide 'mb-org-export-filters)
;;; mb-org-export-filters.el ends here
