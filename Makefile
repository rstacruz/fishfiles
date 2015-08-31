link:
	mkdir -p ~/.config
	ln -nfs "`pwd -LP`" ~/.config/fish

update:
	fish -c 'abbr -s' > ./config.d/abbreviations.fish
