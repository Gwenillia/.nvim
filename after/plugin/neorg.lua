require('neorg').setup {
  load = {
    ["core.defaults"] = {},        -- Loads default behaviour
    ["core.concealer"] = {
      config = {
        folds = false,
        icons = {
          code_block = {
            conceal = true,
          },
        },
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
    ["core.journal"] = {
      config = {
        journal_folder = "dailys",
      }
    },
    ["core.summary"] = {},
    ["core.export"] = {},
  },
}
