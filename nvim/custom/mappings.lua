---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>fr"] = { "<cmd> Telescope oldfiles <CR>", "Find recent files" },
    ["<C-d>"] = { "<C-d>zz" },
    ["<C-u>"] = { "<C-u>zz" },
    ["<leader>rr"] = { ":!python3 %", "Run python file"},
    ["<C-Enter>"] = { ":!python3 % <Enter>", "Run python file"},
    ["<leader>qq"] = { ":q! <Enter>", "Exit Nvim"},
    ["<leader>rc"] = { ":so $MYVIMRC <Enter>", "Reload config file"},
  },
  v = {
    [">"] = { ">gv", "indent"},
  },
}

-- more keybinds!

return M
