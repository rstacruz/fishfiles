function __auto_notes_hook --description "Auto notes" --on-event fish_prompt
  if test "$__auto_notes_last" != (pwd)
    if test -f __NOTES
      echo -ne "\033[32m"
      echo
      cat __NOTES | sed 's/^/  /g'
      echo -ne "\033[0m"
    end
  end
  set  -g __auto_notes_last (pwd)
end
