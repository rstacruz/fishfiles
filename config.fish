# printf '\033[?25l\033[90m Loading...'
# suppress greeting
set -e fish_greeting

# bins
set -gx fish_user_paths ~/.config/fish/bin $fish_user_paths
if test -d ~/bin
  set -gx fish_user_paths ~/bin $fish_user_paths
end

# autoload files
for f in ~/.config/fish/config.d/*.fish
  source $f
end

for f in ~/.config/fish/_packages/*/bin
  set -gx fish_user_paths $fish_user_paths $f
end

# printf '\r\033[K\033[0m\033[?25h'
source ~/.asdf/asdf.fish
