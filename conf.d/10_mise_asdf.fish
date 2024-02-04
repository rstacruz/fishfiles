# To install rtx:
#
#     yay -S rtx  # aur
#     rtx plugin add lua
#     rtx list-all lua
#     rtx install lua 5.4.6
#     rtx global lua 5.4.6
#     lua -v
#
#     rtx plugin add neovim
#
# To install asdf instead:
#
#     git clone https://github.com/asdf-vm/asdf.git ~/.asdf
#     ...then do the commands above with asdf instead of rtx
begin
    if type -q $HOME/.local/bin/mise
        $HOME/.local/bin/mise activate fish | source
        abbr asdf mise
        abbr arst mise
        abbr rtx mise
    else if test -f ~/.asdf/asdf.fish
        source ~/.asdf/asdf.fish
        abbr arst asdf
    end
end
