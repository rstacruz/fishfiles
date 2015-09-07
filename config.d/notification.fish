function __notification_hook --description "Long command notification" --on-event fish_prompt
  if test $CMD_DURATION
      if test $CMD_DURATION -gt (math "1000 * 2")
          set secs (math "$CMD_DURATION / 1000")
          if which terminal-notifier >/dev/null
            if test $status -eq 0
              terminal-notifier -title "$history[1]" -message "✓ ""$CMD_DURATION""ms"
            else
              terminal-notifier -title "$history[1]" -message "✗ Error $status in ""$CMD_DURATION""ms"
            end
          end
      end
  end
end
