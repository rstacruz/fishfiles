function bower --description 'Invoke bower in node_modules'
  if test -x ./node_modules/.bin/bower
    ./node_modules/.bin/bower $argv
  else
    command bower $argv
  end
end
