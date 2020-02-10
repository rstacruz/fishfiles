if test -n "$NVIM_LISTEN_ADDRESS"
  set -gx EDITOR "nvr --remote-tab-wait"
  set -gx VISUAL "nvr --remote-tab-wait"
end
