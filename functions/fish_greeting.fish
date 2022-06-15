function fish_greeting
  #fish_greeting_time
end

function fish_greeting_time
  set -l date1 (date "+%a")
  set -l date2 (date "+%b %e")
  set -l time (date "+%I:%M %p")
  set -l cdir (basename (pwd))
  set -l msg ''

  if ! test -z $VIMRUNTIME
    set msg ' (vim)'
  end

  # echo -ne '\033K\r'
  echo -ne '\n'
  echo -e (set_color brblack)'╭─────────┄┌─────╮'
  echo -e (set_color brblack)'│ '(set_color blue)$time(set_color brblack)' │ '(set_color green)$date1(set_color brblack)' │  '(set_color reset)$date2(set_color blue)$msg(set_color reset)
  echo -e (set_color brblack)'╰──────────┘┄────╯'
  # echo -e (set_color brblack)'┌────────────┐───────┬──────────┐'
  # echo -e (set_color brblack)'│  '(set_color blue)$time(set_color brblack)'  │  '(set_color reset)$date1(set_color brblack)'  │  '(set_color reset)$date2(set_color brblack)'  │ '(set_color blue)$msg(set_color reset)
  # echo -e (set_color brblack)'└────────────└───────┘──────────┘'
end
