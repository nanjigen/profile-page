(TeX-add-style-hook
 "cv"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("inputenc" "utf8") ("fontenc" "T1") ("ulem" "normalem")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "href")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "altacv"
    "altacv10"
    "inputenc"
    "fontenc"
    "graphicx"
    "luatexja"
    "longtable"
    "wrapfig"
    "rotating"
    "ulem"
    "amsmath"
    "amssymb"
    "capt-of"
    "hyperref")
   (LaTeX-add-labels
    "sec:org45afd8e"
    "sec:orgf45f970"
    "sec:orgebedf85"
    "sec:org63d4d2c"
    "sec:org4533f32"
    "sec:org73b6f9d"
    "sec:orgd05a901"
    "sec:org6e4c122"
    "sec:orge6ca57f"
    "sec:org7bdd546"
    "sec:org2199812"
    "sec:org92cb78a"
    "sec:orgd4d6ec8"
    "sec:orga7c3ed3"
    "sec:org4d31e11"
    "sec:org1214136"
    "sec:org1916da9"
    "sec:org741e34b"
    "sec:orgc0f9e5f"
    "sec:org825399f"
    "sec:orgae87f1d"))
 :latex)

