# emacs-config

Essa é a minha configuração do emacs.
A configuração está disposta em um arquivo "config.org".

Para que funcione integralmente é necessário apontar os endereços de cada arquivo usado em "begin.org", bem como apontar o endereço de "config.org" no arquivo .emacs (ou init.el equivalente).

# dependências


## pacotes usados

Estão listados na variável ``dependencies`` dentro de install/install-required-packages.el

Além destes, também é usado o late-night-theme, que está na pasta "extra".

## Em progresso:

Estou criando um script de instalação para agilizar o processo de configuração do emacs.

- TODO : Criar um Makefile para coordenar o processo de instalação/configuração. 

## Advertências:
- se você usa Syncthing para sincronizar seus arquivos entre múltiplos dispositivos não use o script ``orgmove``. Apesar de que ele não vai apagar os seus arquivos .org da pasta, ele pode apagar os arquivos remotos do Syncthing caso eles tenham o mesmo nome (por serem mais novos).
	- Não testei isso ainda, mas acho que vale a advertência. 
	- É preferível, portanto, sincronizar pelo Syncthing em vez de usar o ``orgmove``. 
