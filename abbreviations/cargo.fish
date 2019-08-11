if type -q cargo
  abbr c 'cargo'
  abbr ct 'cargo test'
  abbr cr 'cargo run'
  abbr cf 'cargo fmt'
  abbr ctw 'cargo watch -x "test -- --nocapture"'
else
  echo "(Skipping 'cargo' abbreviations - 'cargo' not found)"
end
