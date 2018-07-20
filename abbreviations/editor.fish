# Editor

abbr :e 'eval $EDITOR'
abbr :E 'eval $EDITOR'
abbr e 'eval $EDITOR'

# Emacs
abbr ec    'emacsclient -t -c -a \'\''

# Ranger
abbr ra      'ranger'

abbr era     'env EDITOR="emacsclient -t -c -a \'\'" ranger'
abbr eranger 'env EDITOR="emacsclient -t -c -a \'\'" ranger'

abbr cra     'env EDITOR="code" ranger'
abbr cranger 'env EDITOR="code" ranger'

abbr nra     'env EDITOR="nvim" ranger'
abbr nranger 'env EDITOR="nvim" ranger'
