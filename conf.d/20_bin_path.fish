# Add bin/ to the fish user paths
if not contains ~/.config/fish/bin $fish_user_paths
  set -gx fish_user_paths ~/.config/fish/bin $fish_user_paths
end

if not contains ~/bin $fish_user_paths && test -d ~/bin
  set -gx fish_user_paths ~/bin $fish_user_paths
end

# For pip3
# if test -d ~/.local/bin
#   set -gx fish_user_paths ~/.local/bin $fish_user_paths
# end
