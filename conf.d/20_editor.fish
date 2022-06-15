echo (date +%T.%3N) (status -f)
if test -n "$NVIM_LISTEN_ADDRESS"
  set -gx EDITOR "nvr --remote-tab-wait"
  set -gx VISUAL "nvr --remote-tab-wait"
else if type -q nvim
  set -gx EDITOR "nvim"
end
