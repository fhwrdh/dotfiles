-- Claude Code integration, gated behind the NVIM_AI env var.
--   nvim          -> AI disabled (clean, interview-safe)
--   NVIM_AI=1 nvim -> AI enabled (use the `nai` shell alias)
return {
  {
    "coder/claudecode.nvim",
    cond = function()
      return vim.env.NVIM_AI == "1"
    end,
    cmd = {
      "ClaudeCode",
      "ClaudeCodeFocus",
      "ClaudeCodeSend",
      "ClaudeCodeAdd",
      "ClaudeCodeDiffAccept",
      "ClaudeCodeDiffDeny",
    },
    opts = {
      -- Use Neovim's built-in terminal so no extra UI dependency is needed.
      terminal = {
        provider = "native",
        split_side = "right",
        split_width_percentage = 0.35,
      },
    },
    keys = {
      { "<leader>a", nil, desc = "AI / Claude" },
      { "<leader>ac", "<cmd>ClaudeCode<cr>", desc = "Toggle Claude" },
      { "<leader>af", "<cmd>ClaudeCodeFocus<cr>", desc = "Focus Claude" },
      { "<leader>ar", "<cmd>ClaudeCode --resume<cr>", desc = "Resume Claude" },
      { "<leader>aC", "<cmd>ClaudeCode --continue<cr>", desc = "Continue Claude" },
      { "<leader>ab", "<cmd>ClaudeCodeAdd %<cr>", desc = "Add current buffer" },
      { "<leader>as", "<cmd>ClaudeCodeSend<cr>", mode = "v", desc = "Send selection to Claude" },
      { "<leader>aa", "<cmd>ClaudeCodeDiffAccept<cr>", desc = "Accept Claude diff" },
      { "<leader>ad", "<cmd>ClaudeCodeDiffDeny<cr>", desc = "Deny Claude diff" },
    },
  },
}
