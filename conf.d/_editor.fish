if test -z "$EDITOR"
  if which emacsclient > /dev/null
    set -gx EDITOR "emacsclient -t -c -a ''"
  else if which vim > /dev/null
    set -gx EDITOR "vim"
  else if which nano > /dev/null
    set -gx EDITOR "nano"
  end
end
