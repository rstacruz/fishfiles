function boot2docker-shellinit --description 'Initializes boot2docker'
  set shinit (boot2docker shellinit)
  for i in (seq (count $shinit))
          eval $shinit[$i]
  end
end
