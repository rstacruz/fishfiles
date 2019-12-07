function fish_greeting
    set -l time (date "+%I:%M %p")
    set -l date (date "+%A, %b %e")
    echo ""
    echo "  $time"
    echo "  $date"
    echo ""

    if type -q upower
        set -l perc (upower -i /org/freedesktop/UPower/devices/battery_BAT0 | awk '/percentage:/ {print $2}')
        set -l state (upower -i /org/freedesktop/UPower/devices/battery_BAT0 | awk '/state:/ {print $2}')
        if test "$state" = "discharging"
            set -l left (upower -i /org/freedesktop/UPower/devices/battery_BAT0 | awk '/time to empty:/ {print $4, $5}')
            echo "     $perc · $left left"
        else
            echo "  Battery ($state): $perc"
        end
        echo ""
    end
end
