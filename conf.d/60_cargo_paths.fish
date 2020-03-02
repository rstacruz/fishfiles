if test -d ~/.cargo/bin
  if not contains ~/.cargo/bin $PATH
    set --prepend PATH ~/.cargo/bin
  end
end
