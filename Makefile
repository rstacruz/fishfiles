link:
	mkdir -p ~/.config
	if [ ! . -ef ~/.config/fish ]; then ln -nfs "`pwd -LP`" ~/.config/fish; fi
