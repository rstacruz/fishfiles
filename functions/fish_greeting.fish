function fish_greeting
    set -l hilite cyan
    set -l date (date "+%A, %b %e")
    if type -q toilet
        echo ""
        set_color $hilite
        date +" %I:%M %p " | toilet -f future
        echo ""
        echo "  "(set_color brblack)"$date"(set_color normal)
    else
        set -l time (date "+%I:%M %p")
        echo ""
        echo "  "(set_color cyan)"$time"(set_color normal)
        echo "  "(set_color normal)"$date"(set_color normal)
        echo ""
    end

    if type -q upower
        set -l perc (upower -i /org/freedesktop/UPower/devices/battery_BAT0 | awk '/percentage:/ {print $2}')
        set -l state (upower -i /org/freedesktop/UPower/devices/battery_BAT0 | awk '/state:/ {print $2}')
        if test "$state" = "discharging"
            set -l left (upower -i /org/freedesktop/UPower/devices/battery_BAT0 | awk '/time to empty:/ {print $4, $5}')
            echo "  "(set_color $hilite)"   $perc"(set_color normal)" · $left left"
        else if test "$state" = "fully-charged"
            echo "  "(set_color $hilite)"   100%"
        else
            echo "  Battery ($state): $perc"
        end
        echo ""
    end

    set_color normal
end
