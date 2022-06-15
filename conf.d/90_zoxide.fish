echo (date +%T.%3N) (status -f)
if type -q nvim
  zoxide init fish | source
end
