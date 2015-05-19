# brew install autojump
[ -f /usr/local/share/autojump/autojump.fish ]; and \
    . /usr/local/share/autojump/autojump.fish

# brew install chruby-fish
# https://github.com/jeanmertz/chruby-fish
[ -f /usr/local/share/chruby/chruby.fish ]; and \
    . /usr/local/share/chruby/chruby.fish

# brew install direnv
# https://github.com/zimbatm/direnv/
if which direnv > /dev/null
    eval (direnv hook fish)
end

# theme
[ -f ~/.config/fish/local/theme.fish ]; and \
    . ~/.config/fish/local/theme.fish

# so tmux won't complain
export SHELL=/usr/local/bin/fish

# fish_vi_mode
