# Editor

abbr :e 'eval $EDITOR'
abbr :E 'eval $EDITOR'
abbr e  'eval $EDITOR'

abbr a  'atom-open'
abbr a. 'atom-open .'

# Neovim (server and client)
abbr v 'env NVIM_LISTEN_ADDRESS=/tmp/nvimsocket nvim'
abbr V 'nvr'

# Emacs
abbr ec    'emacsclient -t -c -a \'\''

# Ranger
abbr ra      'ranger'

abbr era     'env EDITOR="emacsclient -t -c -a \'\'" ranger'
abbr eranger 'env EDITOR="emacsclient -t -c -a \'\'" ranger'

abbr cra     'env EDITOR="code" ranger'
abbr cranger 'env EDITOR="code" ranger'

abbr vra     'env NVIM_LISTEN_ADDRESS=tmp/nvimsocket EDITOR="nvim" ranger'
abbr vranger 'env NVIM_LISTEN_ADDRESS=tmp/nvimsocket EDITOR="nvim" ranger'

abbr Vra     'env EDITOR="nvr" ranger'
abbr Vranger 'env EDITOR="nvr" ranger'

abbr ara     'env EDITOR="atom-open" ranger'
abbr aranger 'env EDITOR="atom-open" ranger'
