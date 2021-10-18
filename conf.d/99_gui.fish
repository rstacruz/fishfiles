if test (hostname) = "misamino"
  set TTY1 (tty)
  if test -z "$DISPLAY"; and test $TTY1 = "/dev/tty1"
    set -x MOZ_ENABLE_WAYLAND 1
    set -x QT_QPA_PLATFORM wayland
    exec sway --my-next-gpu-wont-be-nvidia
    else if test -z "$DISPLAY"; and test $TTY1 = "/dev/tty2"
    exec startx
  end
end
