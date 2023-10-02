require('neorg').setup {
  load = {
    ["core.defaults"] = {},        -- Loads default behaviour
    ["core.concealer"] = {
      config = {
        icon_preset = "diamond",
      },
    },       -- Adds pretty icons to your documents
    ["core.dirman"] = {            -- Manages Neorg workspaces
      config = {
        workspaces = {
          notes = "~/notes",
        },
        default_workspace = "notes",
      },
    },
    ["core.keybinds"] = {
      config = {
        default_keybinds = true,    -- Generate the default keybinds
      }
    },
  },
}
