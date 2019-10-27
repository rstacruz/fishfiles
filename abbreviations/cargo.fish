if ! type -q cargo
  echo "(Skipping 'cargo' abbreviations - 'cargo' not found)"
else
  abbr ca 'cargo'
  abbr ct 'cargo test'
  abbr car 'cargo run'
  abbr caf 'cargo fmt'
  abbr ctw 'cargo watch -x "test -- --nocapture"'
end
