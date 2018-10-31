if test -e "$HOME/Dev/notes"
  set -gx PROJECT_NOTES_PATH "$HOME/Dev/notes"
else if test -e "$HOME/org/Projects"
  set -gx PROJECT_NOTES_PATH "$HOME/org/Projects"
end

function ls! --description "Auto notes" # --on-event fish_prompt
  set project_name (basename (pwd))
  set project_note $PROJECT_NOTES_PATH"/"$project_name".txt"

  if test -f $project_note
    echo ""
    set_color -i blue
    cat $project_note | sed 's/^/    /g' | sed -e '/----/,$d'
    set_color normal
  end

  ls
end
