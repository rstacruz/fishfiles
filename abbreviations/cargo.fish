if ! type -q cargo
  echo "(Skipping 'cargo' abbreviations - 'cargo' not found)"
else
  abbr c 'cargo'
  abbr ct 'cargo test'
  abbr cr 'cargo run'
  abbr cf 'cargo fmt'
  abbr ctw 'cargo watch -x "test -- --nocapture"'
end
