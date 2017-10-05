# For Haskell `stack` integration.
#
#     brew install haskell-stack
#     stack --resolver nightly install hledger
#
if test -d ~/.local/bin
  set -gx fish_user_paths ~/.local/bin $fish_user_paths
end
