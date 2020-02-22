# Add bin/ to the fish user paths
if not contains $HOME/.config/fish/bin $fish_user_paths
  set -gx fish_user_paths $HOME/.config/fish/bin $fish_user_paths
end

if not contains $HOME/bin $fish_user_paths && test -d ~/bin
  set -gx fish_user_paths $HOME/bin $fish_user_paths
end

# For pip3
# if test -d ~/.local/bin
#   set -gx fish_user_paths ~/.local/bin $fish_user_paths
# end
