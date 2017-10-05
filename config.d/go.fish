# Sets $GOPATH for Go and adds the bins in the user path.

set -x GOPATH $HOME/.go

if test -d ~/.go/bin
  set -gx fish_user_paths ~/.go/bin $fish_user_paths
end
