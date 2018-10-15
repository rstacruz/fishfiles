abbr are 'autorenice'

# Battery
abbr batt 'upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep -E "percent|time"'

# minimal prompt
abbr .mp 'env MINIMAL_PROMPT=1 fish'
abbr .nomp 'set -gx MINIMAL_PROMPT'
