function update-settings --description "Update environment variables and more"
    update-abbreviations
    update-bin-paths
    update-editor
    update-ls-colors
    update-other-settings
end

function update-bin-paths --description "Update PATH variable"
    if test -d $HOME/.config/fish/bin
        fish_add_path --universal $HOME/.config/fish/bin
    end
    if test -d $HOME/bin
        fish_add_path --universal $HOME/bin
    end
    if test -d $HOME/go/bin
        fish_add_path --universal $HOME/go/bin
    end
    if test -d $HOME/Library/Python/3.8/bin
        fish_add_path --universal $HOME/Library/Python/3.8/bin
    end
    if test -d /opt/homebrew/bin
        fish_add_path --universal /opt/homebrew/bin
    end
    if test -d /mnt/c/Windows; and test -d $HOME/bin/wsl
        fish_add_path --universal $HOME/bin/wsl
    end
    if test -d $HOME/.cargo/bin # rust
        fish_add_path --universal $HOME/.cargo/bin
    end
    if test -d $HOME/.local/bin # pip
        fish_add_path --universal $HOME/.local/bin
    end
end

function update-editor --description "Update EDITOR variable"
    if type -q nvim
        set --universal --export EDITOR nvim
    else if type -q vim
        set --universal --export EDITOR vim
    end
end

function update-ls-colors --description "Update LS_COLORS variable"
    # Update LS_COLORS in WSL to prevent unreadable directories
    # https://github.com/Microsoft/vscode/issues/7556
    if test -f /mnt/c/Windows/explorer.exe
        set --universal --export LS_COLORS 'ow=01;36;40'
    end
end

function update-other-settings
    set --universal tide_character_icon "›"
end
