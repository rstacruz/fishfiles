# suppress greeting
set -e fish_greeting

# bins
set -u fish_user_paths ~/.config/fish/bin $fish_user_paths

# autoload files
for f in ~/.config/fish/config/*.fish; . $f; end

for f in ~/.config/fish/_packages/*/bin
  set -u fish_user_paths $fish_user_paths $f
end
