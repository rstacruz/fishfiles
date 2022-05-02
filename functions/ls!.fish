function ls! --description "Auto notes" # --on-event fish_prompt
  if type -q exa
    exa --icons --group-directories-first $argv
  else
    ls $argv
  end
end
