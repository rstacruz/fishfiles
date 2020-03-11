# Developer completions

# push/pop
abbr 1 prevd
abbr 2 nextd

# exit
abbr :q  'exit'
abbr :q! 'exit'

# Autojump
abbr j  'z'

# Node.js
abbr y   'yarn'
abbr yui 'yarn upgrade-interactive --latest'
abbr yt  'yarn test'

# For today (eg, `git checkout -b (today )/update`)
abbr today "date +'%Y-%m-%d'"

# Convert YAML to JSON
abbr yaml 'ruby -rjson -ryaml -e "puts JSON.pretty_generate(YAML.load(STDIN.read))" <'

# Notes
abbr N 'env VIM_MINIMAL=1 nvim ~/.priv/notes/Notes/NOTES.md'
abbr T 'env VIM_MINIMAL=1 nvim ~/.priv/notes/Todo/todo.taskpaper'
abbr TT 'env VIM_MINIMAL=1 nvim ~/.priv/notes/Todo/todo.txt'
