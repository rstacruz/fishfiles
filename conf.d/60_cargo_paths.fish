if test -d ~/.cargo/bin
  if not contains ~/.cargo/bin $fish_user_paths
    set -a fish_user_paths ~/.cargo/bin
  end
end
