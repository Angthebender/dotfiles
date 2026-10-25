-- See https://wiki.hypr.land/configuring/core/autostart/
hl.on("hyprland.start", function()
	hl.exec_cmd("waybar & awww-daemon")
	-- hl.exec_cmd("hyprpaper")
	-- hl.exec_cmd("nm-applet")
end)
