function rspec --description 'Invoke rspec in ./bin'
  if test -x ./bin/rspec
    ./bin/rspec $argv
  else
    command rspec $argv
  end
end
