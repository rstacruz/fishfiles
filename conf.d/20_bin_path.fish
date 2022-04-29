if test -d $HOME/.config/fish/bin
  fish_add_path $HOME/.config/fish/bin
end
if test -d $HOME/bin
  fish_add_path $HOME/bin
end
if test -d $HOME/go/bin
  fish_add_path $HOME/go/bin
end
if test -d $HOME/Library/Python/3.8/bin
  fish_add_path $HOME/Library/Python/3.8/bin
end
if test -d /opt/homebrew/bin
  fish_add_path /opt/homebrew/bin
end
if test -d /mnt/c/Windows; and test -d $HOME/bin/wsl
  fish_add_path $HOME/bin/wsl
end
