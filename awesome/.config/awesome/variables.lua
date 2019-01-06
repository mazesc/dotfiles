local awful = require("awful")
local lain = require("lain")

terminal = "kitty"
browser1 = "firefox"
browser2 = "qutebrowser"
editor = os.getenv("EDITOR") or "nvim"
editor_cmd = terminal .. " -e " .. editor
file1 = terminal .. " -e " .. "thunar"
file2 = "nemo"
music = terminal .. " -e ncmpcpp"

scripts = "~/.scripts/"

screen1 = "eDP1"
screen2 = "HDMI-1"

lockscreen = "xlock"
-- lockscreen = "betterlockscreen -l dimblur"

kb_layout = "en"

is_laptop = true

autostart = {
	"compton -b",
	"unclutter",
	"nm-applet",
	"redshift-gtk",
	"blueman-applet",
	"udiskie --smart-tray",
}

awful.layout.layouts = {
    awful.layout.suit.tile,
    awful.layout.suit.tile.left,
    awful.layout.suit.tile.bottom,
    awful.layout.suit.tile.top,
    awful.layout.suit.floating,
    awful.layout.suit.fair,
    awful.layout.suit.fair.horizontal,
    awful.layout.suit.spiral,
    awful.layout.suit.spiral.dwindle,
    awful.layout.suit.magnifier,
    awful.layout.suit.corner.nw,
    awful.layout.suit.corner.ne,
    awful.layout.suit.corner.sw,
    awful.layout.suit.corner.se,
    lain.layout.cascade,
    lain.layout.cascade.tile,
    lain.layout.centerwork,
    lain.layout.centerwork.horizontal,
    lain.layout.termfair,
    lain.layout.termfair.center,
}

awful.util.tagnames = {
	{
		{name = "1", sel = true},
		{name = "2"},
		{name = "3", lay = awful.layout.layouts[3], mw = 0.87},
		{name = "4"},
		{name = "5"},
		{name = "6"},
		{name = "7"},
		{name = "8"},
		{name = "9"},
		{name = "10", lay = awful.layout.layouts[5]},
	},
	{
		{name = "1", sel = true},
		{name = "2"},
		{name = "3"},
		{name = "4"},
		{name = "5"},
		{name = "6"},
		{name = "7"},
		{name = "8"},
		{name = "9"},
		{name = "10"},
	}
}
