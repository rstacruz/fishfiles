function update-abbreviations
  # don't async the fish_right_prompt
  set -U async_prompt_functions fish_prompt

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
    abbr syu 'sudo pacman -Sy --needed --noconfirm archlinux-keyring && sudo pacman -Su'
    abbr rns 'sudo pacman -Rns'
    # abbr pacman-packages "pacman -Slq | fzf --multi --preview 'pacman -Si {1}' | xargs -ro sudo pacman -S"
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

  # if type -q nordvpn
  #   echo "✓ NordVPN (nord)"
  #   abbr nord 'sudo systemctl start nordvpnd; nordvpn'
  # end

  if type -q ruby
    echo "✓ Ruby (be)"
    abbr be 'bundle exec'
    abbr arspec 'nodemon -e rb,haml,slim -x bin/rspec --' # auto-rspec for Rails apps
  end

  if type -q yay
    echo "✓ yay (yas)"
    abbr yas 'yay -S --needed'
  end

  if type -q tmux
    echo "✓ tmux (ta)"
    abbr ta 'tmux new -A -s default'
  end

  if type -q z
    echo '✓ z (j ,)'
    abbr j z
    abbr , z
  end

  # if type -q chezmoi
  #   echo "✓ Chezmoi"
  #   abbr che 'chezmoi'
  #   abbr chez 'chezmoi'
  # end
 
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

  if test -f /mnt/c/Windows/System32/where.exe
    if test -f /mnt/c/Windows/explorer.exe
       echo "✓ Windows (explorer)"
      abbr explorer /mnt/c/Windows/explorer.exe
      abbr cmd /mnt/c/Windows/System32/cmd.exe
      abbr powershell /mnt/c/Windows/System32/WindowsPowerShell/v1.0/powershell.exe
      abbr pwsh /mnt/c/Windows/System32/WindowsPowerShell/v1.0/powershell.exe
    end

    set winget_path (windows_where winget)
    if test -n "$winget_path"
       echo "✓ Windows: winget.exe (winget, wg, ws, wi, wu, wx)"
       abbr winget $winget_path
       abbr wg $winget_path
       abbr ws "$winget_path search"
       abbr wi "$winget_path install -e --id"
       abbr wu "$winget_path upgrade"
       abbr wx "$winget_path uninstall -e --id"
    end

    set win_code_path (windows_where code)
    if test -n "$win_code_path"
       echo "✓ Windows: VSCode (code)"
       abbr code "$win_code_path"
    end

    set win_git_path (windows_where git)
    if test -n "$win_git_path"
       echo "✓ Windows: Git (wingit)"
      abbr wingit "$win_git_path"
    end
  end

  update-abbreviations-utils
end

function windows_where
  /mnt/c/Windows/System32/where.exe $argv[1] |
    tr -d '\015' | # dos2unix
    head -n 1 |
    string replace --all '\\' '/' |
    string replace 'C:' '/mnt/c'
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
