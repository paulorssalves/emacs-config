* emacs-config
Essa é a minha configuração do emacs.
A configuração está disposta em um arquivo "config.org".

Para que funcione integralmente é necessário apontar os endereços de cada arquivo usado em "begin.org", bem como apontar o endereço de "config.org" no arquivo .emacs (ou init.el equivalente).

	* pacotes sendo atualmente usados
   (podem ser instalados de uma só vez usando a função 'install-multiple', definida em "config.org"

	``` 
	(setq current-packages 
		'(markdown-mode evil goto-chg helm helm-core async 
		jedi auto-complete jedi-core epc ctable concurrent 
		noflet org-babel-eval-in-repl ess julia-mode matlab-mode 
		eval-in-repl ace-window avy dash org-bullets paredit popup 
		python-environment deferred restart-emacs smart-mode-line 
		rich-minority undo-tree web-mode))
	```
