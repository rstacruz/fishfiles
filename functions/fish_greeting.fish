function fish_greeting
    set -l time (date "+%I:%M %p")
    set -l date (date "+%A, %b %e")
    echo ""
    echo "  "(set_color brgreen)"$time"(set_color normal)
    echo "  "(set_color normal)"$date"(set_color normal)
    echo ""

    if type -q upower
        set -l perc (upower -i /org/freedesktop/UPower/devices/battery_BAT0 | awk '/percentage:/ {print $2}')
        set -l state (upower -i /org/freedesktop/UPower/devices/battery_BAT0 | awk '/state:/ {print $2}')
        if test "$state" = "discharging"
            set -l left (upower -i /org/freedesktop/UPower/devices/battery_BAT0 | awk '/time to empty:/ {print $4, $5}')
            echo "  "(set_color brgreen)"   $perc"(set_color normal)" · $left left"
        else if test "$state" = "fully-charged"
            echo "  "(set_color brgreen)"   100%"
        else
            echo "  Battery ($state): $perc"
        end
        echo ""
    end

    set_color normal
end
