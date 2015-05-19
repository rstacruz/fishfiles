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
. ~/.config/fish/local/theme.fish
set -u fish_user_paths ~/.config/fish/bin $fish_user_paths

# brew install git-extras
# ...nothing to do

# so tmux won't complain
export SHELL=/usr/local/bin/fish

# Vi mode, fixing ctrl-c to cancel the line instead of exiting insert mode
fish_vi_mode
function fish_vi_key_bindings_local
  fish_vi_key_bindings
  bind -e -M insert \cc
  bind -M insert -m insert \cc 'commandline ""'
end
set -g fish_key_bindings fish_vi_key_bindings_local
