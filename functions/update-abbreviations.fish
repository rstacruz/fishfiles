function update-abbreviations
  if type -q git
    echo "✓ git (g, ad, com, cout, ...)"
    abbr g 'git'

    # Most common commands
    abbr ad     'git add --all .; git status -s'
    abbr st     'git status'
    abbr co     'git checkout'
    abbr cob    'git checkout -b'
    abbr com    'git commit -v'
    abbr dif    'git diff'
    abbr dic    'git diff --cached'

    abbr push   'git push'
    abbr pull   'git pull'
    abbr PUSH   'git push --set-upstream origin (git rev-parse --abbrev-ref HEAD) --force-with-lease'
    abbr PULL   'git fetch; and git reset --hard origin/(git rev-parse --abbrev-ref HEAD)'
    abbr pur    'git pull --rebase'

    # A little less common
    abbr amend  'git commit --amend -v'
    abbr fetch  'git fetch'
    abbr merge  'git merge'
    abbr rebase 'git rebase'
    abbr stash  'git stash'

    # Macros
    abbr gcd  'cd (git rev-parse --show-toplevel)'
    abbr g,   'git status -s | grep -E "^[DRAM]"; git commit -m (read -p \'echo "Commit: "\')'
    abbr g.   'git add --all .; and git commit -m Update'

    # fastsync
    abbr gf   'git fastsync'
    abbr gi   'git fastsync -i'

    # punishment for older aliases
    abbr gaa   "sleep 0.5; git add --all .; # try 'ad'"
  end

  if type -q docker-compose
    echo "✓ Docker (dc)"
    abbr dc 'docker-compose'
  end

  if type -q systemctl
    echo "✓ systemctl (sys)"
    abbr sys 'sudo systemctl'
  end

  if type -q pacman
    echo "✓ pacman (syu, rns)"
    abbr syu 'sudo pacman -Syu'
    abbr rns 'sudo pacman -Rns'
    # abbr pacman-packages "pacman -Slq | fzf --multi --preview 'pacman -Si {1}' | xargs -ro sudo pacman -S"
  end
  
  if type -q winget.exe
    echo "✓ winget.exe (winget)"
    abbr winget "winget.exe"
    abbr wins "winget.exe search"
    abbr wini "winget.exe install -e --id"
  end

  if type -q tig
    echo "✓ tig (tigs)"
    abbr tigs 'tig status'
  end

  if type -q exa
    echo "✓ exa (l, ls, lah, lah)"
    abbr l 'ls!'
    abbr ls 'ls!'
    abbr la 'ls! -la'
    abbr lah 'ls! -lah'
    abbr lat 'ls! --tree --color=always | less -RFX'
  end

  if type -q swaymsg
    echo "✓ Sway"
    abbr so 'sway-outputs'
    abbr sm 'swaymsg'
  end

  if type -q nordvpn
    echo "✓ NordVPN (nord)"
    abbr nord 'sudo systemctl start nordvpnd; nordvpn'
  end

  if type -q ruby
    echo "✓ Ruby (be)"
    abbr be 'bundle exec'
    abbr arspec 'nodemon -e rb,haml,slim -x bin/rspec --' # auto-rspec for Rails apps
  end

  if type -q yay
    echo "✓ yay (yas)"
    abbr yas 'yay -S --needed'
  end

  if type -q z
    echo '✓ z (j ,)'
    abbr j z
    abbr , z
  end

  if type -q chezmoi
    echo "✓ Chezmoi"
    abbr che 'chezmoi'
    abbr chez 'chezmoi'
  end
 
  if type -q ag
    echo "✓ ag (gg)"
    abbr gg 'ag --pager \'less -RFX\''
  end

  if type -q gh
    echo "✓ gh (pr, prc, prv, prw)"
    abbr pr 'gh pr'
    abbr prc 'gh pr checkout'
    abbr prv 'gh pr view --web'
    abbr prw 'gh pr create --web'
    abbr prlist 'gh pr list --search "-is:draft"'
  end

  # if type -q nvim
  #   echo "✓ Neovim"
  #   abbr v 'nvim'
  #   abbr n 'nvim'
  # end

  # if type -q code
  #   echo "✓ VSCode"
  #   abbr c. 'code (git rev-parse --show-toplevel)'
  # end

  # if type -q cargo
  #   echo "✓ Cargo"
  #   abbr ca 'cargo'
  #   abbr ct 'cargo test'
  #   abbr car 'cargo run'
  #   abbr caf 'cargo fmt'
  #   abbr ctw 'cargo watch -x "test -- --nocapture"'
  # end

  if type -q winget.exe
     echo "✓ winget.exe (wg, ws, wi, wu, wx)"
     abbr wg "winget.exe"
     abbr ws "winget.exe search"
     abbr wi "winget.exe install -e --id"
     abbr wu "winget.exe upgrade"
     abbr wx "winget.exe uninstall -e --id"
  end

  update-abbreviations-utils
end

function update-abbreviations-utils
  echo "✓ fish (1, 2, :q, :cq)"
  # push/pop
  abbr 1 prevd
  abbr 2 nextd

  # exit
  abbr :q  'exit'
  abbr :cq 'exit'
end
