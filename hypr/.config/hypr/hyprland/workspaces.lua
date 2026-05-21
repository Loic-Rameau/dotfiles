local workspaceLeft = {"", "", "", "", "󰺷"}
local workspaceRight = {"", "",}
for i = 1, 5 do
    hl.workspace_rule({
        workspace = i,
        monitor = 'DP-2',
        persistent = true,
        default_name = workspaceLeft[i - 1]
    })
end

for i = 6, 7 do
  hl.workspace_rule({
    workspace = i,
    monitor = 'HDMI-A-1',
    persistent = true,
    default_name = workspaceRight[i - 6]
  })
end
