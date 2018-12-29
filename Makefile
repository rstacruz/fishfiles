default:
	@echo Type 'make link' to link files to ~/.config, then type 'fisher' to install.

link:
	mkdir -p ~/.config
	if [ ! . -ef ~/.config/fish ]; then ln -nfs "`pwd -LP`" ~/.config/fish; fi
