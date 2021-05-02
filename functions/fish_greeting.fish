function fish_greeting
  set -l date (date "+%A, %b %e")
  set -l time (date "+%I:%M %p")
  set -l cdir (basename (pwd))
  set -l msg ''

  if ! test -z $VIMRUNTIME
    set msg ' · vim mode'
  end

  set_color cyan
  echo ''
  echo -e '  '$date''$msg
  echo -e '  '$time

  set_color reset
end
