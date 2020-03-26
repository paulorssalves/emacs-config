# emacs-config

Essa é a minha configuração do emacs.
A configuração está disposta em um arquivo "config.org".

Para que funcione integralmente é necessário apontar os endereços de cada arquivo usado em "begin.org", bem como apontar o endereço de "config.org" no arquivo .emacs (ou init.el equivalente).

## pacotes sendo atualmente usados

(podem ser instalados de uma só vez usando a função 'install-multiple', definida em "config.org"

```emacs-lisp 
(setq current-packages 
	'(evil-magit magit solarized-theme visual-fill-column org-gcal org-caldav oauth2 oauth impatient-mode simple-httpd jedi ranger ox-twbs use-package auctex smart-mode-line-powerline-theme powerline latex-preview-pane latex-extra pdf-tools emmet-mode markdown-mode org-babel-eval-in-repl evil auto-complete jedi-core eval-in-repl org-bullets paredit restart-emacs undo-tree web-mode))
```
