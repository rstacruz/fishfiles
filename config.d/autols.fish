function __autols_hook --description "Auto ls" --on-event fish_prompt
  if test "$__autols_last" != (pwd)
    if test "$HOME" = (pwd)
      echo
      echo " →" (set_color --bold) (date +"%I:%M%p")
      set_color normal
      set_color black
      date +"    %a · %B %e"
      set_color normal
      echo
      if test -f ~/.motd
        cat ~/.motd | sed 's/^/    /g'
      end
    else
      echo; ls
    end
  end
  set  -g __autols_last (pwd)
end
