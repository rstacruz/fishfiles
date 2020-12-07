# https://superuser.com/questions/83626/how-do-i-set-the-title-of-terminal-app-with-the-fish-shell#639763
function fish_title
  if [ $_ = 'fish' ]
    # echo (prompt_pwd)
    echo (basename (pwd))
  else
    echo (basename (pwd)) › $_
  end
end


