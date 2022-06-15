echo (date +%T.%3N) (status -f)
function __autols_hook --description "Auto ls" --on-event fish_prompt
  if test "$NO_AUTO_LS" != ""
    return
  end

  if test "$__autols_last" != (pwd) -a -n "$__autols_last"
    ls!
  end

  set  -g __autols_last (pwd)
end
