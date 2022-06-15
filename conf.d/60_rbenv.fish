echo (date +%T.%3N) (status -f)
if ! type -q rbenv
  exit
end

if ! status --is-interactive
  exit
end

# Run 'rbenv init', but skip rehash, its pretty slow.
# source (rbenv init - | sed 's/command rbenv rehash/#&/' | psub)

# Even cheaper
set -gx PATH "$HOME/.rbenv/shims" $PATH
set -gx RBENV_SHELL fish

function rbenv
  set command $argv[1]
  set -e argv[1]

  switch "$command"
  case rehash shell
    source (rbenv "sh-$command" $argv|psub)
  case '*'
    command rbenv "$command" $argv
  end
end
