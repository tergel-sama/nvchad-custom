---@type MappingsTable
local M = {}
-- In order to disable a default keymap, use
M.disabled = {
  n = {
    -- save
    ["<C-s>"] = "",

    -- tab close
    ["<leader>x"] = "",

    -- rm which key
    ["<leader>wk"] = "",
  },
}

M.general = {
  n = {
    -- save file
    ["<leader>w"] = { "<cmd>w <CR>", "save file" },

    -- close tab or file
    ["<leader>q"] = {
      function()
        require("nvchad_ui.tabufline").close_buffer()
      end,
      "close buffer",
    },
  },
}

M.comment = {
  plugin = true,

  -- toggle comment in both modes
  n = {
    ["gc"] = {
      function()
        require("Comment.api").toggle.linewise.current()
      end,
      "toggle comment",
    },
  },

  v = {
    ["gc"] = {
      "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",
      "toggle comment",
    },
  },
}

-- more keybinds!

return M
