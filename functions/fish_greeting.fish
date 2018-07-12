function fish_greeting
  if test -x ~/.motd
    ~/.motd
  else if test -f ~/.motd
    cat ~/.motd
  end
end
