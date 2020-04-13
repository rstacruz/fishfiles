if ! type -q rbenv
  exit
end

if ! status --is-interactive
  exit
end

# Run 'rbenv init', but skip rehash, its pretty slow.
# source (rbenv init - | sed 's/command rbenv rehash/#&/' | psub)

# Even cheaper
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
