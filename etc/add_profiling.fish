#!/usr/bin/env fish
# Add timestamp printing

function main -a cmd
  if test "$cmd" = "go"
    disable
    enable
    fish -i -c 'if test -n "$lastts"; echo ""(math ('(datecmd)') - $lastts)ms; end'
    disable
  else if test "$cmd" = "on"
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
    echo "gdate +'%s%3N'"
  else
    echo "date +'%s%3N'"
  end
end


function enable
  cd $HOME/.config/fish/conf.d
  for fn in *.fish
    echo '# for profiling' > $fn.tmp
    echo 'if test -n "$lastts"; echo ""(math ('(datecmd)') - $lastts)ms; end # for profiling' >> $fn.tmp
    echo 'printf "%-30s" (basename (status -f)) # for profiling' >> $fn.tmp
    echo 'set lastts ('(datecmd)') # for profiling' >> $fn.tmp
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
