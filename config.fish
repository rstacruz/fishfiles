# suppress greeting
set -e fish_greeting

# bins
set -u fish_user_paths ~/.config/fish/bin $fish_user_paths

# config
if test -d ~/Config/_/bin
  set -u fish_user_paths ~/Config/_/bin $fish_user_paths
end

# autoload files
for f in ~/.config/fish/config.d/*.fish; . $f; end

for f in ~/.config/fish/_packages/*/bin
  set -u fish_user_paths $fish_user_paths $f
end
