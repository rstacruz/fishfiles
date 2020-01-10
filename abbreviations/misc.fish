abbr are 'autorenice'

# minimal prompt
abbr .mp 'env MINIMAL_PROMPT=1 fish'
abbr .nomp 'set -gx MINIMAL_PROMPT'

# For today (eg, `git checkout -b (today )/update`)
abbr today "date +'%Y-%m-%d'"

# Browse for wallpapers
if type -q feh
  abbr fed 'feh --draw-filename .'
end

# NordVPN
if type -q nordvpn
  abbr nord 'nordvpn'
  abbr nor 'nordvpn'
end

# Gotop
if type -q gotop
  abbr got 'gotop -smb -c monokai'
end

# Homebrew
if type -q brew
  abbr br 'brew'
  abbr bc 'brew cask'
  abbr bs 'brew search'
  abbr bi 'brew install'
else
  echo "(Skipping 'brew' abbreviations - 'brew' not found)"
end

# Convert YAML to JSON
abbr yaml 'ruby -rjson -ryaml -e "puts JSON.pretty_generate(YAML.load(STDIN.read))" <'

if type -q termdown
  abbr td 'termdown -f starwars'
end

if type -q swaymsg
  abbr so 'sway-outputs'
end

if type -q kubectl
  abbr k 'kubectl'
end
