-- Remote path bookmarks
local remote_bookmarks = {
  -- Add your common paths here
  -- Format: { name = "Display Name", url = "oil-ssh://host/path" }
  { name = "Bull4 Home", url = "oil-ssh://bull4/home/stout/" },
  { name = "Bull4 Work", url = "oil-ssh://bull4/home/stout/work/" },
  { name = "Bull4 Projects", url = "oil-ssh://bull4/home/stout/projects/" },
  { name = "B4.tools", url = "oil-ssh://bull4/var/tmp/stout/gocode/src/github.com/lindenlab/extraction-tools/" },
  -- Add more bookmarks as needed
}

return {
  -- Oil.nvim - file browser that works with remote files
  {
    "stevearc/oil.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("oil").setup({
        default_file_explorer = false, -- Don't disable netrw completely
        columns = {
          "icon",
          "permissions",
          "size",
          "mtime",
        },
        view_options = {
          show_hidden = true,
        },
        -- Use oil-ssh:// for remote browsing
        silence_scp_warning = true,
        -- Keymaps in oil buffer
        keymaps = {
          ["g?"] = "actions.show_help",
          ["<CR>"] = "actions.select",
          ["<C-s>"] = "actions.select_vsplit",
          ["<C-h>"] = "actions.select_split",
          ["<C-t>"] = "actions.select_tab",
          ["<C-p>"] = "actions.preview",
          ["<C-c>"] = "actions.close",
          ["<C-l>"] = "actions.refresh",
          ["-"] = "actions.parent",
          ["_"] = "actions.open_cwd",
          ["`"] = "actions.cd",
          ["~"] = "actions.tcd",
          ["gs"] = "actions.change_sort",
          ["gx"] = "actions.open_external",
          ["g."] = "actions.toggle_hidden",
          ["g\\"] = "actions.toggle_trash",
        },
      })
    end,
    keys = {
      { "-", "<cmd>Oil<cr>", desc = "Open parent directory" },
      {
        "<leader>-",
        function()
          require("oil").open(vim.fn.getcwd())
        end,
        desc = "Open oil in cwd",
      },
      {
        "<leader>ro",
        function()
          local host = vim.fn.input("Remote host: ", "bull4")
          if host ~= "" then
            local path = vim.fn.input("Remote path: ", "/home/stout/")
            if path ~= "" then
              require("oil").open("oil-ssh://" .. host .. "/" .. path)
            end
          end
        end,
        desc = "Browse remote directory (Oil)",
      },
      {
        "<leader>rb",
        function()
          -- Use Telescope to pick from bookmarks
          local pickers = require("telescope.pickers")
          local finders = require("telescope.finders")
          local conf = require("telescope.config").values
          local actions = require("telescope.actions")
          local action_state = require("telescope.actions.state")

          pickers
            .new({}, {
              prompt_title = "Remote Bookmarks",
              finder = finders.new_table({
                results = remote_bookmarks,
                entry_maker = function(entry)
                  return {
                    value = entry,
                    display = entry.name,
                    ordinal = entry.name,
                  }
                end,
              }),
              sorter = conf.generic_sorter({}),
              attach_mappings = function(prompt_bufnr, map)
                actions.select_default:replace(function()
                  actions.close(prompt_bufnr)
                  local selection = action_state.get_selected_entry()
                  require("oil").open(selection.value.url)
                end)
                return true
              end,
            })
            :find()
        end,
        desc = "Browse remote bookmarks",
      },
    },
  },
}
