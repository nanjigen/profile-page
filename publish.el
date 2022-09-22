(require 'weblorg)

;; Guarantee the freshest version of the weblorg
(add-to-list 'load-path "~/.emacs.d/.local/straight/repos/weblorg")
(add-to-list 'load-path "~/.emacs.d/.local/straight/repos/templatel")
(require 'weblorg)
(require 'templatel)

;; Setup package management
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; Install and configure dependencies
(use-package templatel :ensure t)
(use-package htmlize
  :ensure t
  :config
  (setq org-html-htmlize-output-type 'css))

;; (weblorg-site
;;  :template-vars '(("site_name" . "Daniel Otto's site")
;;                   ("site_owner" . "translation@danielotto.jp (owner)")
;;                   ("site_description" . "My personal profile and blog.")))


;; route for rendering each post
(weblorg-route
 :name "posts"
 :input-pattern "posts/*.org"
 :template "post.html"
 :output "output/posts/{{ slug }}.html"
 :url "/posts/{{ slug }}.html")

;; route for rendering the index page of the blog
(weblorg-route
 :name "blog"
 :input-pattern "posts/*.org"
 :input-aggregate #'weblorg-input-aggregate-all-desc
 :template "blog.html"
 :output "output/index.html"
 :url "/")

;; route for rendering each page
(weblorg-route
 :name "pages"
 :input-pattern "pages/*.org"
 :template "page.html"
 :output "output/{{ slug }}.html"
 :url "/{{ slug }}.html")

;; route for static assets that also copies files to output directory
(weblorg-copy-static
 :output "static/{{ file }}"
 :url "/static/{{ file }}")

;; fire the engine and export all the files declared in the routes above
(weblorg-export)
