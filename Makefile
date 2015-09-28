link:
	mkdir -p ~/.config
	ln -nfs "`pwd -LP`" ~/.config/fish

update:
	fish -c 'abbr -s' > ./abbreviations.fish
