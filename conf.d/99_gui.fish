if test (hostname) = "misamino"
  set TTY1 (tty)
  if test -z "$DISPLAY"; and test $TTY1 = "/dev/tty1"
    exec startx
  else if test -z "$DISPLAY"; and test $TTY1 = "/dev/tty2"
    set -x MOZ_ENABLE_WAYLAND 1
    set -x QT_QPA_PLATFORM wayland
    exec sway --my-next-gpu-wont-be-nvidia
  end
end
