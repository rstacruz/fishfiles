# Editor

abbr :e 'eval $EDITOR'
abbr :E 'eval $EDITOR'
abbr e  'eval $EDITOR'

abbr a  'atom-open'
abbr a. 'atom-open .'

# Neovim (server and client)
abbr V 'nvim'
abbr v 'nvr'

# Emacs
abbr ec    'emacsclient -t -c -a \'\''

# Ranger
abbr ra      'ranger'

abbr era     'env EDITOR="emacsclient -t -c -a \'\'" ranger'
abbr eranger 'env EDITOR="emacsclient -t -c -a \'\'" ranger'

abbr cra     'env EDITOR="code" ranger'
abbr cranger 'env EDITOR="code" ranger'

abbr Vra     'EDITOR="nvim" ranger'
abbr Vranger 'EDITOR="nvim" ranger'

abbr vra     'env EDITOR="nvr" ranger'
abbr vranger 'env EDITOR="nvr" ranger'

abbr ara     'env EDITOR="atom-open" ranger'
abbr aranger 'env EDITOR="atom-open" ranger'
