function update-abbreviations
  update-abbreviations-git
  update-abbreviations-apps
  update-abbreviations-utils
end

function update-abbreviations-apps
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

  if type -q systemctl
    abbr sys 'sudo systemctl'
  end

  if type -q pacman
    echo "✓ Pacman"
    abbr pac 'pacman'
  end

  if type -q winget.exe
    echo "✓ Winget.exe"
    abbr winget "winget.exe"
    abbr wins "winget.exe search"
    abbr wini "winget.exe install -e --id"
  end

  if type -q tig
    echo "✓ Tig"
    abbr tigs 'tig status'
  end

  if type -q exa
    echo "✓ Exa"
    abbr ls 'exa'
    abbr la 'exa -lah'
    abbr lah 'exa -lah'
    abbr lat 'exa -lah --tree'
  end

  if type -q nvim
    echo "✓ Neovim"
    abbr v 'nvim'
    abbr n 'nvim'
  end

  if type -q nvim-qt
    if type -q i3-msg
      echo "✓ neovim-qt + i3"
      abbr N 'i3-msg layout tabbed; nvim-qt .'
    else
      echo "✓ neovim-qt"
      abbr N 'nvim-qt .'
    end
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

  if type -q yay
    echo "✓ yay"
    abbr gib 'yay -S --needed'
    abbr yeet 'yay -Rns'
  end

  if type -q pacman
    echo '✓ pacman'
    abbr pacman-packages "pacman -Slq | fzf --multi --preview 'pacman -Si {1}' | xargs -ro sudo pacman -S"
  end
  
  if type -q z
    echo '✓ z (autojump)'
    abbr j z
  end
end

function update-abbreviations-utils
  # push/pop
  abbr 1 prevd
  abbr 2 nextd

  # exit
  abbr :q  'exit'
  abbr :cq 'exit'
end
