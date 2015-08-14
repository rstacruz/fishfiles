function watchify --description 'Invoke watchify in node_modules'
  if test -x ./node_modules/.bin/watchify
    ./node_modules/.bin/watchify $argv
  else
    command watchify $argv
  end
end
