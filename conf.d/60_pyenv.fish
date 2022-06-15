echo (date +%T.%3N) (status -f)
if type -q pyenv
  status --is-interactive; and source (pyenv init -|psub)
end
