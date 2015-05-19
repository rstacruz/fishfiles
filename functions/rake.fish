function rake --description 'Invoke rake in ./bin'
  if test -x ./bin/rake
    ./bin/rake $argv
  else
    command rake $argv
  end
end

