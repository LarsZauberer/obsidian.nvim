---@param client obsidian.Client
return function(client, data)
  local opts = {}
  local all = ""
  for k, v in pairs(data) do
    all = all .. k .. " | "
  end
  print("All: [" .. all)
  if data.args and string.len(data.args) > 0 then
    opts.open_strategy = data.args
  end

  client:follow_link_async(nil, opts)
end
