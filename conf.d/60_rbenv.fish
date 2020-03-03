if type -q rbenv
  if status --is-interactive
    # Run 'rbenv init', but skip rehash, its pretty slow.
    source (rbenv init - | sed 's/command rbenv rehash/#&/' | psub)
  end
end
