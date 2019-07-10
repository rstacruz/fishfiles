if type -q rbenv
  status --is-interactive; and source (rbenv init -|psub)
end
