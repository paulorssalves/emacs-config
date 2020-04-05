# emacs-config

Essa é a minha configuração do emacs.
A configuração está disposta em um arquivo "config.org".

Para que funcione integralmente é necessário apontar os endereços de cada arquivo usado em "begin.org", bem como apontar o endereço de "config.org" no arquivo .emacs (ou init.el equivalente).

## pacotes sendo atualmente usados

(podem ser instalados de uma só vez usando a função 'install-multiple', definida em "config.org"

```emacs-lisp 
(setq dependencies '(dracula-theme emmet-mode evil-magit evil goto-chg helm helm-core dash-functional impatient-mode htmlize jedi auto-complete jedi-core epc ctable concurrent latex-preview-pane magit git-commit markdown-mode noflet oauth2 org-babel-eval-in-repl ess eval-in-repl ace-window avy org-bullets org-gcal alert log4e gntp orgbox ox-gfm ox-twbs paredit popup python-environment ranger request-deferred request deferred restart-emacs s simple-httpd rich-minority solarized-theme dash tablist transient undo-tree visual-fill-column web-mode with-editor async all-the-icons memoize))
```
