function fish_greeting
  if test -f ~/.motd
    cat ~/.motd
  end
end
