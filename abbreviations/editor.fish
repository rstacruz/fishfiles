# Editor
abbr e  'nvr'

abbr a  'atom-open'
abbr a. 'atom-open .'

# Neovim (server and client)
abbr V 'nvim'
abbr v 'nvr'
abbr v. 'nvr --remote-send "<Esc>:cd "(pwd)"<CR>:NERDTree<CR>"'

# Emacs
abbr ec    'emacsclient -t -c -a \'\''

# Ranger
abbr ra      'ranger'

abbr era     'env EDITOR="emacsclient -t -c -a \'\'" ranger'
abbr eranger 'env EDITOR="emacsclient -t -c -a \'\'" ranger'

abbr cra     'env EDITOR="code" ranger'
abbr cranger 'env EDITOR="code" ranger'

abbr Vra     'env EDITOR="nvim" ranger'
abbr Vranger 'env EDITOR="nvim" ranger'

abbr vra     'env EDITOR="nvr -cc split" ranger'
abbr vranger 'env EDITOR="nvr -cc split" ranger'

abbr ara     'env EDITOR="atom-open" ranger'
abbr aranger 'env EDITOR="atom-open" ranger'
