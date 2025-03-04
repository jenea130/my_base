static const char *tabtermcmd[] = { "tabbed", "-r 2", "st", "-w", "''", NULL };

{ Mod1Mask,      XK_Return,  spawn,      {.v = tabtermcmd } },

-------------------------

.xinitrc

t() {
	a=$(date +"%a, %b %d - %H:%M")
	echo -e "$a"
}

upd() {
	a=$(checkupdates | wc -l)
	echo -e "$a"
}

bat() {
	a=$(acpi | awk '{print $4}')
	echo -e "$a"
}

while true; do
	if [ "$(xset q | awk '/Group 2/ {print $4}')" == "on" ]; then
		LANG="ru"
	else
		LANG="en"
	fi
#	xsetroot -name " $LANG | Bat: $(bat) | Upd: $(upd) | $(t) "
	xsetroot -name " $LANG | Bat: $(bat) | $(t) "
	sleep 1s
done &

. ~/.autostart.sh

urxvtd -q -o -f &
sakura &
setxkbmap us,ru -option grp:alt_shift_toggle &

exec dwm

-----------------

static const char *volm[] = { "amixer", "set", "Master", "2%-", NULL };
static const char *volp[] = { "amixer", "set", "Master", "2%+", NULL };


{ MODKEY,		XK_equal, spawn,	{.v=volp } },
{ MODKEY,		XK_minus, spawn,	{.v=volm } },

-------------------
