if test -d ~/.local/bin
  # set -gx fish_user_paths ~/.local/bin $fish_user_paths
  fish_add_path --global --prepend ~/.local/bin
end
