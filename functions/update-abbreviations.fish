function update-abbreviations
  if type -q git
    # echo "✓ git (g, ad, com, cout, ...)"
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
  end

  if type -q aria2c
    # echo "✓ Aria2 (aria5, aria16)"
    abbr aria5 "aria2c -x5 -k1M (read)"

    # Split mode (extra aggressive)
    abbr aria16 "aria2c -x16 -j16 -s16 -k1M (read)"
  end

  if type -q docker-compose
    # echo "✓ Docker (dc)"
    abbr dc 'docker-compose'
  end

  if type -q systemctl
    # echo "✓ systemctl (sys)"
    abbr sys 'sudo systemctl'
  end

  if type -q pacman
    # echo "✓ pacman (syu, rns)"
    abbr syu 'sudo pacman -Sy --needed --noconfirm archlinux-keyring && sudo pacman -Su'
    abbr rns 'sudo pacman -Rns'
    # abbr pacman-packages "pacman -Slq | fzf --multi --preview 'pacman -Si {1}' | xargs -ro sudo pacman -S"
  end
  
  if type -q tig
    # echo "✓ tig (tigs)"
    abbr tigs 'tig status'
  end

  if type -q gitui
    # echo "✓ gitui (tigs)"
    abbr gui 'gitui'
  end

  if type -q exa
    # echo "✓ exa (l, ls, lah, lah)"
    abbr l 'ls!'
    abbr ls 'ls!'
    abbr la 'ls! -la'
    abbr lah 'ls! -lah'
    abbr lat 'ls! --tree --color=always | less -RFX'
  end

  if type -q yarn
    # echo "✓ yarn (y, yt, yd, yb)"
    abbr y 'yarn'
    abbr yt 'yarn test'
    abbr yd 'yarn dev'
    abbr yb 'yarn build'
    abbr yui 'yarn upgrade-interactive --latest'
  end

  if type -q swaymsg
    # echo "✓ Sway"
    abbr so 'sway-outputs'
    abbr sm 'swaymsg'
  end

  if type -q ruby
    abbr be 'bundle exec'
    if type -q nodemon
      abbr arspec 'nodemon -e rb,haml,slim,erb -x bin/rspec -- --fail-fast --order defined' # auto-rspec for Rails apps
    else if type -q watchexec
      abbr arspec 'watchexec -e rb,haml,slim,erb -- bin/rspec --fail-fast --order defined' # auto-rspec for Rails apps
    end
  end

  if type -q yay
    # echo "✓ yay (yas)"
    abbr yas 'yay -S --needed'
  end

  if type -q tmux
    # echo "✓ tmux (ta)"
    abbr ta 'tmux new -A -s default'
  end

  if type -q z
    # echo '✓ z (j ,)'
    abbr j z
    abbr , z
  end

  if type -q ag
    # echo "✓ ag (gg)"
    abbr gg 'ag --pager \'less -RFX\''
  end

  if type -q gh
    # echo "✓ gh (pr, prc, prv, prw)"
    abbr pr 'gh pr'
    abbr prc 'gh pr checkout'
    abbr prv 'gh pr view --web'
    abbr prw 'gh pr create --web'
    abbr prlist 'gh pr list --search "-is:draft"'
  end

  # if type -q nvim
  #   # echo "✓ Neovim"
  #   abbr v 'nvim'
  #   abbr n 'nvim'
  # end

  # if type -q code
  #   # echo "✓ VSCode"
  #   abbr c. 'code (git rev-parse --show-toplevel)'
  # end

  # if type -q cargo
  #   # echo "✓ Cargo"
  #   abbr ca 'cargo'
  #   abbr ct 'cargo test'
  #   abbr car 'cargo run'
  #   abbr caf 'cargo fmt'
  #   abbr ctw 'cargo watch -x "test -- --nocapture"'
  # end

  # These are great when using `appendWindowsPath = false` in WSL. It makes
  # common utilities available even if windows PATH appending is turned off
  if test -f /mnt/c/Windows/System32/where.exe
    if test -f /mnt/c/Windows/explorer.exe
       # echo "✓ Windows (explorer)"
      abbr explorer /mnt/c/Windows/explorer.exe
      abbr cmd /mnt/c/Windows/System32/cmd.exe
      abbr pwsh /mnt/c/Windows/System32/WindowsPowerShell/v1.0/powershell.exe
      abbr wsl /mnt/c/Windows/System32/wsl.exe
    end

    set winget_path (windows_where winget)
    if test -n "$winget_path"
       # echo "✓ Windows: winget.exe (winget, wg, ws, wi, wu, wx)"
       abbr winget $winget_path
       abbr wg $winget_path
       abbr ws "$winget_path search"
       abbr wi "$winget_path install -e --id"
       abbr wu "$winget_path upgrade"
       abbr wx "$winget_path uninstall -e --id"
    end

    set win_code_path (windows_where code)
    if test -n "$win_code_path"
       # echo "✓ Windows: VSCode (code)"
       abbr code "$win_code_path"
    end

    set win_git_path (windows_where git)
    if test -n "$win_git_path"
       # echo "✓ Windows: Git (wingit)"
      abbr wingit "$win_git_path"
    end
  end

  update-abbreviations-clipboard
  update-abbreviations-utils
end

function update-abbreviations-clipboard
  if type -q pbcopy # MacOS
    abbr copy pbcopy
    abbr paste pbpaste
  else if type -q termux-clipboard-set # Termux
    abbr copy termux-clipboard-set
    abbr paste termux-clipboard-get
  else if test -n "$WAYLAND_DISPLAY" && type -q wl-paste # Wayland
    abbr copy wl-copy
    abbr paste wl-paste
  else if type -q Powershell.exe
    abbr copy "Powershell.exe Set-Clipboard"
    abbr paste "Powershell.exe Get-Clipboard"
  else if test -n "$DISPLAY"
    if type -q xsel
      abbr copy xsel -b
      abbr paste xsel  -b
    else if type -q xclip
      abbr copy xclip
      abbr paste xclip -o
    end
  end
end

function update-abbreviations-utils
  # echo "✓ fish (1, 2, :q, :cq)"
  # push/pop
  abbr 1 prevd
  abbr 2 nextd

  # exit
  abbr :q  'exit'
  abbr :cq 'exit'
end
