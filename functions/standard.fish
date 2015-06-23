function standard --description 'Invoke standard in node_modules'
  if test -x ./node_modules/.bin/standard
    ./node_modules/.bin/standard $argv
  else
    command standard $argv
  end
end
