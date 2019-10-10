# Editor

# [Neovim]
if ! type -q nvim
  echo "(Skipping 'nvim' abbreviations - neovim not found)"
else
  abbr v 'nvim'
  abbr n 'nvim'
end

# [Code]
if ! type -q code
  echo "(Skipping 'code' abbreviations - vscode not found)"
else
 abbr cr    'code -r (git rev-parse --show-toplevel)'
 abbr c     'code (git rev-parse --show-toplevel)'
end


# [Neovim server]
# abbr v 'nvr -s'
# abbr v. 'nvr -s --remote-send "<Esc>:cd "(pwd)"<CR>:NERDTree<CR>"'

# [Emacs]
# abbr ec    'emacsclient -t -c -a \'\''

# Ranger
# abbr ra      'ranger'

# abbr era     'env EDITOR="emacsclient -t -c -a \'\'" ranger'
# abbr eranger 'env EDITOR="emacsclient -t -c -a \'\'" ranger'

# abbr cra     'env EDITOR="code" ranger'
# abbr cranger 'env EDITOR="code" ranger'

# abbr Vra     'env EDITOR="nvim" ranger'
# abbr Vranger 'env EDITOR="nvim" ranger'

# abbr vra     'env EDITOR="nvr -cc split" ranger'
# abbr vranger 'env EDITOR="nvr -cc split" ranger'

# abbr ara     'env EDITOR="atom-open" ranger'
# abbr aranger 'env EDITOR="atom-open" ranger'
