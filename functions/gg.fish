function gg -d "Search via ripgrep/git grep"
  if type -q rg
    rg -p $argv | less -R
  else if type -q ag
    ag --pager 'less -R' $argv
  else
    git grep $argv
  end
end

