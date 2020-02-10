if test -n "$NVIM_LISTEN_ADDRESS"
  set -gx EDITOR "nvr --remote-wait"
  set -gx VISUAL "nvr --remote-wait"
end
