if type -q exa
  abbr ls 'exa'
  abbr la 'exa -la'
else
  echo "(Skipping 'ls' abbreviations - 'exa' not found)"
end
