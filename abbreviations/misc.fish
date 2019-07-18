abbr are 'autorenice'

# minimal prompt
abbr .mp 'env MINIMAL_PROMPT=1 fish'
abbr .nomp 'set -gx MINIMAL_PROMPT'

# For today (eg, `git checkout -b (today )/update`)
abbr today "date +'%Y-%m-%d'"

# Browse for wallpapers
abbr fed 'feh --draw-filename .'

# NordVPN
abbr nord 'nordvpn'
abbr nor 'nordvpn'

# Gotop
abbr got 'gotop -smb -c monokai'

# Homebrew
if type -q brew
  abbr br 'brew'
  abbr bc 'brew cask'
  abbr bs 'brew search'
  abbr bi 'brew install'
else
  echo "(Skipping 'brew' abbreviations - 'brew' not found)"
end
