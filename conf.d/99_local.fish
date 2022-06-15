echo (date +%T.%3N) (status -f)
if test -f $HOME/.config/fish/local/local.fish
  source $HOME/.config/fish/local/local.fish
end
