# Automatically parse .envrc
set -g __autoenvfish_file .envrc.fish

function __autoenvfish_hook --description "Autoloads $__autoenvfish_file" --on-event fish_prompt
  if test -f $__autoenvfish_file -a "$__autoenvfish_last" != (pwd)
    set_color black
    echo "(using $__autoenvfish_file)"
    # cat $__autoenvfish_file | sed 's/^/  /g'
    set_color normal
    source $__autoenvfish_file
    set  -g __autoenvfish_last (pwd)
  end
end
