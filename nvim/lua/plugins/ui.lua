return {
  -- Color scheme
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      style = "night",
      styles = {
        comments = { italic = true },
        keywords = { italic = false },
      },
      -- Near-monochrome dark: black, gray, one blue accent. No teal/cyan/green/purple.
      on_colors = function(colors)
        local gray = "#9aa3b8"
        local blue = "#7aa2f7"
        colors.bg = "#16161e"      -- near black
        colors.bg_dark = "#101014"
        colors.fg = "#b0b6c8"      -- gray foreground
        colors.comment = "#565f89"
        -- collapse the accent palette
        colors.green = gray
        colors.teal = gray
        colors.cyan = blue
        colors.magenta = gray
        colors.magenta2 = gray
        colors.purple = blue
        colors.orange = gray
        colors.yellow = gray
        colors.blue = blue
        colors.blue1 = blue
        colors.blue5 = blue
      end,
    },
    config = function(_, opts)
      require("tokyonight").setup(opts)
      vim.cmd.colorscheme("tokyonight-night")
    end,
  },

  -- Status line
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      options = {
        icons_enabled = true,
        theme = "auto",
        component_separators = "|",
        section_separators = "",
      },
    },
  },

  -- Better UI for messages, cmdline and popupmenu
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      lsp = {
        override = {
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.stylize_markdown"] = true,
          ["cmp.entry.get_documentation"] = true,
        },
      },
      presets = {
        bottom_search = true,
        command_palette = true,
        long_message_to_split = true,
      },
    },
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    },
  },

  -- Indent guides
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {},
  },

  -- Highlight todo comments
  {
    "folke/todo-comments.nvim",
    event = "VimEnter",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = { signs = false },
  },

  -- Show keybinding hints
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    config = function()
      require("which-key").setup()
      require("which-key").add({
        { "<leader>c", group = "Code" },
        { "<leader>d", group = "Document" },
        { "<leader>r", group = "Remote/Rename" },
        { "<leader>s", group = "Search" },
        { "<leader>w", group = "Workspace" },
        { "<leader>t", group = "Toggle" },
        { "<leader>h", group = "Git Hunk" },
        { "<leader>g", group = "Git" },
      })

      -- Additional remote keymaps help
      vim.keymap.set("n", "<leader>r", "", { desc = "+Remote/Rename" })
    end,
  },
}
