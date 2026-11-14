local workspaceLeft = { " ", " ", " ", " ", "󰺷 " }
local workspaceRight = { " ", " ", }
for i = 1, 5 do
  hl.workspace_rule({
    workspace = i,
    monitor = 'DP-2',
    persistent = true,
    default_name = workspaceLeft[i]
  })
end

for i = 6, 8 do
  hl.workspace_rule({
    workspace = i,
    monitor = 'HDMI-A-1',
    persistent = true,
    default_name = workspaceRight[i - 5]
  })
end
