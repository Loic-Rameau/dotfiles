for i = 1, 5 do
  hl.workspace_rule({
    workspace = i,
    monitor = 'DP-2',
    persistent = true
  })
end

for i = 6, 10 do
  hl.workspace_rule({
    workspace = i,
    monitor = 'HDMI-A-1',
    persistent = true
  })
end
