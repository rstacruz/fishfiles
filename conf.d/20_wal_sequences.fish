# https://github.com/dylanaraps/pywal/wiki/Getting-Started#applying-the-theme-to-new-terminals
function use_wal
    test -e ~/.cache/wal/sequences # Has to exist
    and test -z "$DISABLE_WAL" # Not be disabled
    and test -z "$SSH_TTY" # Not via ssh
    and test "$TERM_PROGRAM" != vscode
    and test "$TERM" = foot
end

function load_wal
    if use_wal
        cat ~/.cache/wal/sequences &
    end
end

# Use `pkill -USR1 -f load_wal` to reload the theme,
# or pywal with `wal -e --theme github -l`
trap load_wal SIGUSR1
load_wal
