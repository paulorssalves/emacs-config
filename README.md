# emacs-config

Essa é a minha configuração do emacs.
A configuração está disposta em um arquivo "config.org".

Para que funcione integralmente é necessário apontar os endereços de cada arquivo usado em "begin.org", bem como apontar o endereço de "config.org" no arquivo .emacs (ou init.el equivalente).

	## TO-DOs
- Promover a compilação do $USER em .begin.org no lugar de um nome estaticamente inserido. 
- para o script `utils/update_f` checar qual arquivo foi modificado por último para decidir qual será sobrescrito em vez de meramente usar um cp --verbose 
- Adicionar links para os pacotes usados que não são baixados direto do MELPA
 

## dependências
- Emacs
	- apenas isso. Os pacotes usados serão instalados pelos scripts envolvidos no Makefile.

## pacotes usados

Estão listados na variável ``dependencies`` dentro de install/install-required-packages.el

Além destes, também é usado o `late-night-theme` e o `zen-mode`, que estão na pasta "extra".

## Advertências:
- se você usa Syncthing para sincronizar seus arquivos entre múltiplos dispositivos não use o script ``orgmove``. Apesar de que ele não vai apagar os seus arquivos .org da pasta, ele pode apagar os arquivos remotos do Syncthing caso eles tenham o mesmo nome (por serem mais novos).
	- Não testei isso ainda, mas acho que vale a advertência. 
	- É preferível, portanto, sincronizar pelo Syncthing em vez de usar o ``orgmove``. 

## Instalacao
- make safe 
	- instala o emacs na configuraçâo aqui disposta mas _sem_ criar os arquivos .org manipulados pelo `./install/orgmove`;
	- É mais seguro. 

- make fast
	- instala tudo *e* os arquivos manipulados por `./install/orgmove`.

 
