function mocha --description 'Invoke mocha in node_modules'
  if test -x ./node_modules/.bin/mocha
    ./node_modules/.bin/mocha $argv
  else
    command mocha $argv
  end
end
