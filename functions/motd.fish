function motd --description "Shows motd"
  echo
  echo -n " ∷ "
  set_color blue
  echo -n (date +"%I:%M %p")
  set_color normal
  set_color black
  echo -n " "
  date +"%A"
  set_color normal
  if test -f ~/.motd
    cat ~/.motd | sed 's/^/    /g'
  end
end

