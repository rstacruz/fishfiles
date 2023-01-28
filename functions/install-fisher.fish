function install-fisher
  cd $HOME/.config/fish
  # https://github.com/jorgebucaran/fisher
  curl -sL https://git.io/fisher | source
  and fisher install jorgebucaran/fisher
  and git checkout fish_plugins
  and fisher update
  and fish -c update-settings
  and exec fish
end
