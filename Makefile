default:
	@echo "Usage:"
	@echo "  Type 'make link' to link files to ~/.config,"
	@echo "  then type 'fisher' to install."
	@echo
	@echo "Makefile targets:"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' Makefile | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m  %-20s\033[0m %s\n", $$1, $$2}'
	@echo

install: link fisher abbr ## Installs plugins and abbreviations [alias: i]

link: # Link files to ~/.config
	mkdir -p ~/.config
	if [ ! . -ef ~/.config/fish ]; then ln -nfs "`pwd -LP`" ~/.config/fish; fi

fisher:
	fish -c fisher

abbr: ## Install abbreviations [alias: a]
	echo "update-abbreviations" | fish
	echo "source etc/colors.fish" | fish

update: install ## Update [alias: u]

a: abbr
i: install
u: update
.PHONY: a i u
