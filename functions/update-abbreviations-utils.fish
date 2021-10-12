function update-abbreviations-utils
  # push/pop
  abbr 1 prevd
  abbr 2 nextd

  # exit
  abbr :q  'exit'
  abbr :cq 'exit'

  # Autojump
  abbr j  'z'

  # For today (eg, `git checkout -b (today)/update`)
  abbr today "date +'%Y-%m-%d'"
end
