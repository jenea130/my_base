awful.key({ modkey }, "p", function() awful.util.spawn("dmenu_run") end,
              {description = "show the menubar", group = "launcher"}),
awful.key({ modkey }, "i", function() awful.util.spawn("clipmenu") end,
            {description = "clip menu", group = "launcher"}),
awful.key({ modkey }, "u", function() awful.util.spawn("flameshot gui") end,
            {description = "flameshot", group = "launcher"})

- rc.lua the end of the file
```lua
-- Autostart
awful.spawn.with_shell(
	'setxkbmap us,ru -option "grp:alt_shift_toggle";'
		.. "feh --bg-scale /home/lex/Downloads/wallpapers/space.jpg;"
		.. "picom -b"
)
```

- Убрать прокрутку с панели задач
```lua
	-- awful.button({}, 4, function(t)
	-- 	awful.tag.viewnext(t.screen)
	-- end),
	-- awful.button({}, 5, function(t)
	-- 	awful.tag.viewprev(t.screen)
	-- end)
```
- Убрать фокус с мышки когда наведена на окно
```lua
-- Enable sloppy focus, so that focus follows mouse.
-- client.connect_signal("mouse::enter", function(c)
--   c:activate { context = "mouse_enter", raise = false }
-- end)
```

```lua
-- Autostart
-- awful.spawn.with_shell("nitrogen --random")
-- awful.spawn.with_shell("feh --bg-fill --randomize ~/Downloads/wallpapers/")
-- awful.spawn.with_shell("picom")
-- awful.spawn.with_shell("dropbox")
```

-- Themes define colours, icons, font and wallpapers.
beautiful.init("/home/first/.config/awesome/themes/zenburn/theme.lua")

beautiful.wallpaper = "/home/first/Downloads/wallpapers/plant.jpg"

-- Gaps
beautiful.useless_gap = 3

	awful.key({ modkey }, "]", function()
		awful.util.spawn("amixer -q -D pulse sset Master 5%+", false)
	end),
	awful.key({ modkey }, "[", function()
		awful.util.spawn("amixer -q -D pulse sset Master 5%-", false)
	end),
	awful.key({ modkey }, "\\", function()
		awful.util.spawn("amixer -D pulse set Master 1+ toggle", false)
	end),
