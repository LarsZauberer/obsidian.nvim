---@param client obsidian.Client
return function(client, data)
  local opts = {}
  print("Data: " .. data)
  if data.args and string.len(data.args) > 0 then
    opts.open_strategy = data.args
  end

  client:follow_link_async(nil, opts)
end
