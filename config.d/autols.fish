function __autols_hook --description "Auto ls" --on-event fish_prompt
  if test "$__autols_last" != (pwd)
    if test "$HOME" = (pwd)
    else
      echo; ls
    end
  end
  set  -g __autols_last (pwd)
end
