link:
	mkdir -p ~/.config
	ln -nfs "`pwd -LP`" ~/.config/fish

update: abbreviations.fish

abbreviations.fish:
	fish -c 'abbr -s' | sort > $@
