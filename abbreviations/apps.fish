if type -q docker-compose
  echo "✓ Docker"
  abbr dc 'docker-compose'
end

if type -q cargo
  echo "✓ Cargo"
  abbr ca 'cargo'
  abbr ct 'cargo test'
  abbr car 'cargo run'
  abbr caf 'cargo fmt'
  abbr ctw 'cargo watch -x "test -- --nocapture"'
end

if type -q pacman
  echo "✓ Pacman"
  abbr sys 'sudo systemctl'
  abbr pac 'pacman'
end

# Tig
if type -q tig
  echo "✓ Tig"
  abbr tigs 'tig status'
end

if type -q exa
  echo "✓ Exa"
  abbr ls 'exa'
  abbr la 'exa -lah'
  abbr lat 'exa -lah --tree'
  abbr lt 'exa --tree'
end

if type -q nvim
  echo "✓ Neovim"
  abbr v 'nvim'
  abbr n 'nvim'
end

# if type -q nvr
#   echo "✓ Neovim remote"
#   abbr v 'nvr -s -O'
#   abbr s 'nvr -s -o'
#   abbr t 'nvr -s -p'
#   abbr e 'nvr -s'
# end

if type -q code
  echo "✓ VSCode"
  abbr c. 'code (git rev-parse --show-toplevel)'
end

if type -q swaymsg
  echo "✓ Sway"
  abbr so 'sway-outputs'
end

if type -q nordvpn
  echo "✓ NordVPN"
  abbr nord 'sudo systemctl start nordvpnd; nordvpn'
end

if type -q ruby
  echo "✓ Ruby"
  abbr be 'bundle exec'
end

if type -q chezmoi
  echo "✓ Chezmoi"
  abbr che 'chezmoi'
  abbr chez 'chezmoi'
end

if type -q pacman
  echo '✓ pacman'
  abbr pacman-packages "pacman -Slq | fzf --multi --preview 'pacman -Si {1}' | xargs -ro sudo pacman -S"
end
