local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set("n", "<leader>co", function()
  local input = vim.fn.input("Input for copilot chat: ")
  vim.cmd("CopilotChat " .. input)
end, opts)

-- Keymap to execute :CopilotChatExplain in visual mode
keymap.set("v", "<leader>cpe", ":CopilotChatExplain<CR>", opts)
