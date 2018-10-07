if test -e "$HOME/Dev/notes"
  set -gx PROJECT_NOTES_PATH "$HOME/Dev/notes"
else if test -e "$HOME/org/Projects"
  set -gx PROJECT_NOTES_PATH "$HOME/org/Projects"
end

function __auto_notes_hook --description "Auto notes" --on-event fish_prompt
  if test "$__auto_notes_last" != (pwd)
    set project_name (basename (pwd))
    set project_note $PROJECT_NOTES_PATH"/"$project_name".txt"

    if test -f $project_note
      echo -ne "\033[32m"
      echo
      cat $project_note | sed 's/^/  /g' | sed -e '/----/,$d'
      echo -ne "\033[0m"
    end
  end
  set  -g __auto_notes_last (pwd)
end
