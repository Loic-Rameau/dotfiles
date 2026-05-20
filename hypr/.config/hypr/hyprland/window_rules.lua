hl.window_rule({
  -- Ignore maximize requests from all apps. You'll probably like this.
  name           = "suppress-maximize-events",
  match          = { class = ".*" },

  suppress_event = "maximize",
})

hl.window_rule({
  -- Fix some dragging issues with XWayland
  name     = "fix-xwayland-drags",
  match    = {
    class      = "^$",
    title      = "^$",
    xwayland   = true,
    float      = true,
    fullscreen = false,
    pin        = false,
  },

  no_focus = true,
})

-- Layer rules also return a handle.
-- local overlayLayerRule = hl.layer_rule({
--     name  = "no-anim-overlay",
--     match = { namespace = "^my-overlay$" },
--     no_anim = true,
-- })
-- overlayLayerRule:set_enabled(false)

-- Hyprland-run windowrule
hl.window_rule({
  name  = "move-hyprland-run",
  match = { class = "hyprland-run" },

  move  = "20 monitor_h-120",
  float = true,
})

hl.window_rule({
  name = "Volume-placing",
  match = { class = "^(Volume Control)$" },
  float = true,
  move = "onscreen cursor"
})

hl.window_rule({
  name = 'Kitty',
  match = { class = "^(kitty)$" },
  workspace = 1
})

hl.window_rule({
  name = 'zen',
  match = { class = "^(zen)$" },
  workspace = 2
})

hl.window_rule({
  name = 'spotify',
  match = { title = "^(Spotify)$" },
  workspace = 4
})

hl.window_rule({
  name = 'discord',
  match = { class = "^(discord)$" },
  workspace = 6
})

hl.window_rule({
  name = 'Steam-Game',
  match = { class = "^(steam_app.+)$" },
  workspace = 5,
  tag = "steam-game",
  content = "game"
})
