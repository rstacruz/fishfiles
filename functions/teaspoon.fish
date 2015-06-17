function teaspoon --description 'Invoke teaspoon in ./bin'
  if test -x ./bin/teaspoon
    ./bin/teaspoon $argv
  else
    command teaspoon $argv
  end
end
