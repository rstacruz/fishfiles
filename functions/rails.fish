function rails --description 'Invoke rails in ./bin'
  if test -x ./bin/rails
    ./bin/rails $argv
  else
    command rails $argv
  end
end
