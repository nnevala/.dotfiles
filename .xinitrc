[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
[[ -f ~/.Xcolorscheme ]] && xrdb -merge ~/.Xcolorscheme

xsetroot -cursor_name left_ptr

exec xmonad

