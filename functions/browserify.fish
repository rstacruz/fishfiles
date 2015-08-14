function browserify --description 'Invoke browserify in node_modules'
  if test -x ./node_modules/.bin/browserify
    ./node_modules/.bin/browserify $argv
  else
    command browserify $argv
  end
end
