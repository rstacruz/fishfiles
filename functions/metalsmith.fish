function metalsmith --description 'Invoke metalsmith in node_modules'
  if test -x ./node_modules/.bin/metalsmith
    ./node_modules/.bin/metalsmith $argv
  else
    command metalsmith $argv
  end
end
