function ls! --description "Auto notes" # --on-event fish_prompt
  set project_name (basename (pwd))
  set PROJECT_NOTES_PATH "$HOME/org/Projects"
  set project_note $PROJECT_NOTES_PATH"/"$project_name".txt"

  if test -f $project_note
    echo ""
    set_color -i blue
    cat $project_note | sed 's/^/    /g' | sed -e '/----/,$d'
    set_color normal
  end

  if test -x exa
    exa
  else
    ls
  end
end
