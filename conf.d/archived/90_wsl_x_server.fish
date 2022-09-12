if test -f /mnt/c/Windows/explorer.exe
  if ! set -q DISPLAY
    export DISPLAY=:0
    export LIBGL_ALWAYS_INDIRECT=1
  end
end
