
# https://github.com/dylanaraps/pywal/wiki/Getting-Started#applying-the-theme-to-new-terminals
if test -e ~/.cache/wal/sequences; \
  and status --is-interactive; \
  and test "$USE_WAL" != "0"; \
  and test "$TERM_PROGRAM" != "vscode"; \
  and test "$TERM_PROGRAM" != "WezTerm"; \
  and test "$SSH_TTY" != ""; # not when SSH'ing remotely \
  and test "$WSLENV" != "" # running wsl.exe in vscode

  if test "$TERM" = "rxvt-unicode"; \
    or test "$TERM" = "xterm-256color"; \
    or test "$TERM" = "xterm-kitty"; \
    or test "$TERM" = "alacritty"; \
    or test "$USE_WAL" = "1"
    cat ~/.cache/wal/sequences &
  end
end
