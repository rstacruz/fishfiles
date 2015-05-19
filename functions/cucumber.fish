function cucumber --description 'Invoke cucumber in ./bin'
  if test -x ./bin/cucumber
    ./bin/cucumber $argv
  else
    command cucumber $argv
  end
end

