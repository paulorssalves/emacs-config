
INSTALLDIR=./install/
CONFIGFILES = ${INSTALLDIR}configstrap 
EXTRA=${INSTALLDIR}extrapkg
BOOTSTART=${INSTALLDIR}bootstart
DIRCREATE=${INSTALLDIR}dircreate
ORGMOVE=${INSTALLDIR}orgmove
ELPKG=${INSTALLDIR}install-required-packages.el
DICT=${INSTALLDIR}download-extra.sh

safe: install_packages 
fast: setup_org_environment install_packages 

setup_directories:
	sh $(DIRCREATE) 

setup_config: setup_directories
	sh $(CONFIGFILES)
	sh $(EXTRA)

setup_startfile: setup_config
	bash $(BOOTSTART) # used a little bashism in this one 

setup_org_environment: setup_startfile 
	sh $(ORGMOVE) 

# this will output an error due to the fact that running a
# headless instance of emacs won't allow it to
# compile a .elc file (or so I believe that to be the case)
install_packages: setup_startfile
	sh $(ELPKG) 

# este privilégios de SUDOER
# dependências: ispell 
download_dictionary: 
	sh $(DICT) 
