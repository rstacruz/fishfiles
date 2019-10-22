default:
	@echo "Usage:"
	@echo "  Type 'make link' to link files to ~/.config,"
	@echo "  then type 'fisher' to install."
	@echo
	@echo "Makefile targets:"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' Makefile | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m  %-20s\033[0m %s\n", $$1, $$2}'
	@echo

link: ## Link files to ~/.config
	mkdir -p ~/.config
	if [ ! . -ef ~/.config/fish ]; then ln -nfs "`pwd -LP`" ~/.config/fish; fi

install: fisher abbr ## Installs plugins and abbreviations [alias: i]

fisher:
	echo "fisher" | fish

abbr: ## Install abbreviations [alias: a]
	echo "cd ~/.config/fish/abbreviations; source all.fish" | fish

a: abbr
i: install
.PHONY: a i
