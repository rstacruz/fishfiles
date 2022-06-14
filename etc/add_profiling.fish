# Run this in config.d/ to add timestamps
for fn in *.fish
  echo "echo (date +"%T.%3N") (status -f)" > $fn.tmp
  cat $fn >> $fn.tmp
  mv $fn.tmp $fn
end

