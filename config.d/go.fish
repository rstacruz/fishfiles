set -x GOPATH $HOME/.go

if test -d ~/.go/bin
  set -gx fish_user_paths ~/.go/bin $fish_user_paths
end
