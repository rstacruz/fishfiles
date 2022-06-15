# $message ("path/ ls")
# $exit_status
# $wd (working dir)
# $humanized_duration

set __done_notification_command "rsc_done_notification \$exit_status \$title \$message"

set __done_min_cmd_duration 500

function rsc_done_notification
  set -l exit_status $argv[1]
  set -l title $argv[2]
  set -l message $argv[3]

  if type -q terminal-notifier  # https://github.com/julienXX/terminal-notifier
    terminal-notifier -message "$message" -title "$title" -sender "$sender" -activate "$__done_initial_window_id"

  else if type -q osascript  # AppleScript
    osascript -e "display notification \"$message\" with title \"$title\""

  else if type -q notify-send # Linux notify-send
    set -l urgency
    if test $exit_status -ne 0
      set urgency "--urgency=critical"
    end
    notify-send $urgency --icon=terminal --app-name=fish "$title" "$message"

  else  # anything else
    # echo -e "\a" # bell sound
  end

  # if test $exit_status -ne 0
  #   rsc_fail_sound
  # else
  #   rsc_done_sound
  # end
end

# function rsc_done_sound
#   play_sound_file "$HOME/.config/fish/sounds/stairs.ogg"
# end

# function rsc_fail_sound
#   play_sound_file "$HOME/.config/fish/sounds/unsure.ogg"
# end

# function play_sound_file
#   if type -q paplay
#     paplay $argv[1] ^/dev/null & disown
#   else if type -q afplay
#     afplay $argv[1] ^/dev/null & disown
#   end
# end
