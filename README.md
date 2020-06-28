# emacs-config

Essa é a minha configuração do emacs.
A configuração está disposta em um arquivo "config.org".

Eu uso para... tudo: para escrever trabalhos da faculdade, documentos, histórias; para escrever shellscripts, pequenos programas; para estudar estatística, editar arquivos .org e .tex. Acho que como quase todo mundo que usa o Emacs, eu cada vez mais vivo dentro do Emacs. O próximo passo é aprender a gerenciar email dentro do Emacs.

Para que esta build funcione totalmente é necessário apontar os endereços de cada arquivo usado em "begin.org", bem como apontar o endereço de "config.org" no arquivo .emacs (ou init.el equivalente).

O arquivo .begin.org ainda não está devidamente configurado pelos scripts aqui presentes.

## dependências
- Emacs
	- apenas isso. Os pacotes usados serão instalados pelos scripts envolvidos no Makefile.

## pacotes usados

Estão listados na variável ``dependencies`` dentro de install/install-required-packages.el

Além destes, também é usado o [late-night-theme](https://gist.github.com/lateau/4420862) e o [zen-mode](https://github.com/aki237/zen-mode/blob/master/zen-mode.el), que es]tão na pasta "extra".

## Advertências:
- se você usa Syncthing para sincronizar seus arquivos entre múltiplos dispositivos não use o script ``orgmove``. Apesar de que ele não vai apagar os seus arquivos .org da pasta, ele pode apagar os arquivos remotos do Syncthing caso eles tenham o mesmo nome (por serem mais novos).
	- Não testei isso ainda, mas acho que vale a advertência. 
	- É preferível, portanto, sincronizar pelo Syncthing em vez de usar o ``orgmove``. 

- Para criar os diretórios para o uso dos orgfiles provavelmente será necessário criar a pasta com `sudo mkdir -p /media/USUARIO_ATUAL`. O valor de USUARIO_ATUAL deve ser o mesmo que é retornado por `echo $USER` no terminal. 
  - deverá então ser necessário alterar o proprietário desta pasta com `sudo chown -R USUARIO_ATUAL /media/USUARIO_ATUAL`. Tal como acima, o valor de USUARIO_ATUAL deverá ser o mesmo retornado por `echo $USER` no terminal.

## Instalação
- make safe 
	- instala o emacs na configuraçâo aqui disposta mas _sem_ criar os arquivos .org manipulados pelo `./install/orgmove`;
	- É mais seguro. 

- make fast
	- instala tudo *e* os arquivos manipulados por `./install/orgmove`.

- make download_dictionary -- 
	este eu mantive de fora dos outros comandos de instalação porque ele é mais supérfluo, bem como requer maior confiança. Sugiro que cheque o conteúdo de `./install/download-extra.sh`.
	- caso você queira instalar o spellchecker. 
	- É necessário instalar o pacote `ispell` com o seu gerenciador de pacotes para tornar esta etapa útil. 

## TO-DOs
- Promover a compilação do $USER em .begin.org no lugar de um nome estaticamente inserido. 
