function i18n --description 'Invoke i18n-tasks in ./bin'
  if test -x ./bin/i18n-tasks
    ./bin/i18n-tasks $argv
  else
    command i18n-tasks $argv
  end
end

