begin
    if test -f $HOME/.config/fish/local/local.fish
        source $HOME/.config/fish/local/local.fish
    end

    if test -f $HOME/.config/fish-local/local.fish
        source $HOME/.config/fish-local/local.fish
    end
end &
