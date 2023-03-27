if test $SHELL = sh
    # Not sure why this happens in ArchWSL but here we go
    set -gx SHELL (which fish)
end
