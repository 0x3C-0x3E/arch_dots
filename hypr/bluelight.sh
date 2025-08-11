if ! pgrep -x "hyprsunset" > /dev/null
then
    hyprsunset&
    hyprctl hyprsunset temperature 4500

    hyprctl hyprsunset gamma 30
else
    pgrep -x "hyprsunset" | xargs kill
fi
