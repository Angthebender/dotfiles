-- Loads the active theme through the ~/.config/theme/current symlink.
-- Falls back to the stock Hyprland colors if no theme is linked.
local home = os.getenv("HOME")
local ok, t = pcall(dofile, home .. "/.config/theme/current/hypr.lua")
if not ok or type(t) ~= "table" then
  t = {
    active_border   = { colors = { "rgba(33ccffee)", "rgba(00ff99ee)" }, angle = 45 },
    inactive_border = "rgba(595959aa)",
  }
end
return t
