
CONFIGFILES = ./install/configstrap 
EXTRA=./install/extrapkg
BOOTSTART=./install/bootstart
DIRCREATE=./install/dircreate
ORGMOVE=./install/orgmove
ELPKG=./install/install-required-packages.el

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
# compile a .elc file
install_packages: setup_startfile
	sh $(ELPKG) 


