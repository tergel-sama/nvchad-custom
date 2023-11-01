local M = {}

M.treesitter = {
  ensure_installed = {
    -- defualt stuff
    "vim",
    "lua",
    "markdown",
    "markdown_inline",

    -- web dev stuff
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",

    -- backend stuff
    "go",
    "proto",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "prettier",
    "eslint_d",

    -- backend stuff
    "buf-language-server",
    "gopls",
    "gofumpt",
    "goimports",
    "buf",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  diagnostics = {
    enable = true,
    show_on_dirs = true,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    },
  },

  renderer = {
    root_folder_label = false,
    highlight_git = true,
    highlight_opened_files = "none",

    indent_markers = {
      enable = true,
    },

    icons = {
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = true,
      },

      glyphs = {
        default = "",
        symlink = "",
        folder = {
          default = "",
          empty = "",
          empty_open = "",
          open = "",
          symlink = "",
          symlink_open = "",
          arrow_open = "",
          arrow_closed = "",
        },
        git = {
          unstaged = "✗",
          staged = "✓",
          unmerged = "",
          renamed = "➜",
          untracked = "★",
          deleted = "",
          ignored = "◌",
        },
      },
    },
  },
}

return M
