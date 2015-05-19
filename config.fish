# suppress greeting
set -e fish_greeting

# brew install autojump
[ -f /usr/local/share/autojump/autojump.fish ]; and \
    . /usr/local/share/autojump/autojump.fish

# brew install chruby-fish
# https://github.com/jeanmertz/chruby-fish
[ -f /usr/local/share/chruby/chruby.fish ]; and \
    . /usr/local/share/chruby/chruby.fish

# brew install direnv
# https://github.com/zimbatm/direnv/
# which direnv > /dev/null; and \
#     eval (direnv hook fish)

# theme
[ -f ~/.config/fish/local/theme.fish ]; and \
    . ~/.config/fish/local/theme.fish

# https://github.com/tj/git-extras
[ -d ~/.config/fish/bower_components/git-extras/bin ]; and \
    set -U fish_user_paths $fish_user_paths ~/.config/fish/bower_components/git-extras/bin

# so tmux won't complain
export SHELL=/usr/local/bin/fish

# fish_vi_mode
