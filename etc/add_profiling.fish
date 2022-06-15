#!/usr/bin/env fish
# Add timestamp printing

function main -a cmd
  if test "$cmd" = "on"
    disable
    enable
    echo "Enabled. ✓ Use '"(status filename)" off' to disable."
  else if test "$cmd" = "off"
    disable
    echo "Disabled ✓"
  else
    echo "Usage: "(status filename)" {on|off}"
  end
end

function datecmd
  if type -q gdate
    echo "gdate"
  else
    echo "date"
  end
end

function enable
  cd $HOME/.config/fish/conf.d
  for fn in *.fish
    echo "echo ("(datecmd)" +"%T.%3N") (status -f) # for profiling" > $fn.tmp
    cat $fn >> $fn.tmp
    mv $fn.tmp $fn
  end
end

function disable
  cd $HOME/.config/fish/conf.d
  for fn in *.fish
    grep -v "# for profiling" $fn > $fn.tmp
    mv $fn.tmp $fn
  end
end


main "$argv[1]"
