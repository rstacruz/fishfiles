function stylus --description 'Invoke stylus in node_modules'
  if test -x ./node_modules/.bin/stylus
    ./node_modules/.bin/stylus $argv
  else
    command stylus $argv
  end
end
