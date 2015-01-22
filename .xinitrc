[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
[[ -f ~/.Xcolorscheme ]] && xrdb -merge ~/.Xcolorscheme
[[ -f ~/.Xmodmap ]] && /usr/bin/xmodmap ~/.Xmodmap

xsetroot -cursor_name left_ptr

/usr/bin/start-pulseaudio-x11

exec xmonad

