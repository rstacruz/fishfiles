if test -n "$NVIM_LISTEN_ADDRESS"
  set -gx EDITOR "nvr --remote"
else if test -z "$EDITOR"
  if which nvim > /dev/null
    set -gx EDITOR "nvim"
  else if which vim > /dev/null
    set -gx EDITOR "vim"
  else if which emacsclient > /dev/null
    set -gx EDITOR "emacsclient -t -c -a ''"
  else if which nano > /dev/null
    set -gx EDITOR "nano"
  end
end
