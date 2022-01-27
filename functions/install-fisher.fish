function install-fisher
  # https://github.com/jorgebucaran/fisher
  curl -sL https://git.io/fisher | source
  and fisher install jorgebucaran/fisher
  and git checkout fish_plugins
  and fisher update
  and exec fish
end
