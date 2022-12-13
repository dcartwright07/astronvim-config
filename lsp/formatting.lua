return {
  format_on_save = true, -- enable or disable auto formatting on save
  disabled = { -- disable formatting capabilities for the listed clients
    -- "sumneko_lua",
  },
  filter = function(client)
    -- disable formatting for volar for VueJS files
    if client.name == "volar" then
      return false
    end

    -- enable all other clients
    return true
  end,
}
