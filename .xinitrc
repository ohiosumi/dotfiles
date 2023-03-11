if [ -d /etc/X11/xinit/xinitrc.d ] ; then
    for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi

xset b off
export XCURSOR_THEME=macOS-Monterey-White
# setroot -cursor_name left_ptr &

xrdb -merge ~/.Xresources

exec i3
