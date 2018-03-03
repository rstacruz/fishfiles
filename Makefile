link:
	mkdir -p ~/.config
	if [ ! . -ef ~/.config/fish ]; then ln -nfs "`pwd -LP`" ~/.config/fish; fi

update:
	fish -c 'abbr -s' | sort > ./abbreviations.fish

restore:
	source abbreviations.fish
