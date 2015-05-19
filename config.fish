# suppress greeting
set -e fish_greeting

# brew install autojump
[ -f /usr/local/share/autojump/autojump.fish ]; and \
   . /usr/local/share/autojump/autojump.fish

# brew install chruby
# brew install ruby-install
# brew install chruby-fish
# https://github.com/jeanmertz/chruby-fish
[ -f /usr/local/share/chruby/chruby.fish ]; and \
   . /usr/local/share/chruby/chruby.fish

# brew install direnv
# https://github.com/zimbatm/direnv/
# which direnv > /dev/null; and \
#     eval (direnv hook fish)

# brew install git-extras
# ...nothing to do

# local files
. ~/.config/fish/local/theme.fish
. ~/.config/fish/local/vi_mode.fish

# bins
set -u fish_user_paths ~/.config/fish/bin $fish_user_paths

# so tmux won't complain
export SHELL=/usr/local/bin/fish
