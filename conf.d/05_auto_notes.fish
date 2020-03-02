function project_notes_path
  if test -e "$HOME/Dev/notes"
    echo "$HOME/Dev/notes"
  else if test -e "$HOME/org/Projects"
    echo "$HOME/org/Projects"
  end
end

function __auto_notes_hook --description "Auto notes" # --on-event fish_prompt
  if test "$__auto_notes_last" != (pwd)
    set project_name (basename (pwd))
    set project_note (project_notes_path)/$project_name.txt

    if test -f $project_note
      echo ""
      set_color -i blue
      cat $project_note | sed 's/^/    /g' | sed -e '/----/,$d'
      set_color normal
    end
  end
  set  -g __auto_notes_last (pwd)
end
