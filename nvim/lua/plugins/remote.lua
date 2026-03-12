-- Built-in netrw handles remote files via SCP
-- Usage: :e scp://hostname//path/to/file
-- We'll add some convenient keymaps and commands

return {
  -- Helper commands for remote editing
  {
    "nvim-telescope/telescope.nvim",
    optional = true,
    keys = {
      {
        "<leader>rf",
        function()
          -- Ensure netrw is loaded
          vim.cmd("runtime! plugin/netrwPlugin.vim")

          local host = vim.fn.input("Remote host: ", "bull4")
          if host ~= "" then
            local path = vim.fn.input("Remote path: ", "/home/stout/")
            if path ~= "" then
              vim.cmd("e scp://" .. host .. "/" .. path)
            end
          end
        end,
        desc = "Edit remote file (SCP)",
      },
    },
  },
}
