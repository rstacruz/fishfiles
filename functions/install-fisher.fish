function install-fisher
  # https://github.com/jorgebucaran/fisher
  curl -sL https://git.io/fisher | source
  and fish -c "fisher install jorgebucaran/fisher"
  and git checkout fish_plugins
  and exec fish
end
