# Vi mode, fixing ctrl-c to cancel the line instead of exiting insert mode
# https://github.com/fish-shell/fish-shell/issues/2077
fish_vi_key_bindings
# function fish_vi_key_bindings_local
#   fish_vi_key_bindings
#   bind -e -M insert \cc
#   bind -M insert -m insert \cc 'commandline ""'
# end
# set -g fish_key_bindings fish_vi_key_bindings_local
