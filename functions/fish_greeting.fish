function show_battery
    set -l hilite cyan
    set -l mute brblack

    if type -q upower
        set -l batt (upower -e /org/freedesktop/UPower/devices | grep battery | head -n 1)
        set -l perc (upower -i $batt | awk '/percentage:/ {print $2}')
        set -l state (upower -i $batt | awk '/state:/ {print $2}')
        if test "$state" = "discharging"
            set -l left (upower -i $batt | awk '/time to empty:/ {print $4, $5}')
            echo (set_color $hilite)"   $perc"(set_color $mute)" · $left left"
        else if test "$state" = "fully-charged"
            echo (set_color $hilite)"   100%"
        else
            echo (set_color $mute)"Battery ($state): $perc"
        end
        echo ""
    else if type -q pmset
        set -l perc (pmset -g batt | grep -Eo "\d+%")
        set -l state (pmset -g batt | grep -Eo "\d+%; .*;" | cut -d';' -f2 | xargs)
        echo (set_color $mute)"Battery ($state): $perc"
    end

    set_color normal
end

function fish_greeting
    if test -n "$MIN_PROMPT"
        clear
        return
    end

    set -l hilite cyan
    set -l mute brblack
    set -l date (date "+%A, %b %e")
    set -l time (date "+%I:%M %p")
    set -l ind "  "
    if type -q toilet
        echo -ne "\033[s"
        echo ""
        set_color $hilite
        date +" %I:%M %p " | toilet -f future --gay
        set ind "\033[30C"
        echo -ne "\033[u"
    end
    echo ""
    echo -e $ind(set_color $hilite)"$date"(set_color normal)
    echo -e $ind(show_battery)
    echo -e $ind(set_color $mute)"$time"(set_color normal)
    echo ""

    if test -f $HOME/.motd
        cat $HOME/.motd
    end

    echo ""
end
