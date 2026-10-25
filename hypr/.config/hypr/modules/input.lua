hl.config({
    input = {
        kb_layout  = "us",
        kb_variant = "",
        kb_model   = "",
        kb_options = "",
        kb_rules   = "",

        follow_mouse = 1,
        sensitivity  = 0, -- -1.0 to 1.0, 0 = no modification

        touchpad = {
            natural_scroll = false,
        },
    },
})

hl.gesture({
    fingers   = 3,
    direction = "horizontal",
    action    = "workspace",
})

-- Per-device example (see https://wiki.hypr.land/configuring/core/devices/)
-- hl.device({
--     name        = "your-device-name",   -- find it with: hyprctl devices
--     sensitivity = -0.5,
-- })
