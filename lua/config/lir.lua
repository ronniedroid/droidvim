local actions = require "lir.actions"
local mark_actions = require "lir.mark.actions"
local clipboard_actions = require "lir.clipboard.actions"

local cmd = vim.cmd
local api = vim.api
local fn = vim.fn

local function goto_git_root()
  local dir = require "lspconfig.util".find_git_ancestor(fn.getcwd())
  if dir == nil or dir == "" then
    return
  end
  cmd("e " .. dir)
end

require "lir".setup {
  show_hidden_files = false,
  devicons_enable = true,
  mappings = {
    ["l"] = actions.edit,
    ["<C-s>"] = actions.split,
    ["<C-v>"] = actions.vsplit,
    ["<C-t>"] = actions.tabedit,
    ["h"] = actions.up,
    ["<ESC>"] = actions.quit,
    ["K"] = actions.mkdir,
    ["N"] = actions.newfile,
    ["R"] = actions.rename,
    ["@"] = actions.cd,
    ["Y"] = actions.yank_path,
    ["."] = actions.toggle_show_hidden,
    ["D"] = actions.delete,
    ["J"] = function()
      mark_actions.toggle_mark()
      cmd("normal! j")
    end,
    ["C"] = clipboard_actions.copy,
    ["X"] = clipboard_actions.cut,
    ["P"] = clipboard_actions.paste,
    ["g"] = function()
      goto_git_root()
    end
  },
  float = {
    size_percentage = 0.5,
    winblend = 15,
    border = true,
    borderchars = {"╔", "═", "╗", "║", "╝", "═", "╚", "║"},
    -- -- If you want to use `shadow`, set `shadow` to `true`.
    -- -- Also, if you set shadow to true, the value of `borderchars` will be ignored.
    shadow = false
  },
  hide_cursor = true
}

-- use visual mode
function _G.LirSettings()
  api.nvim_buf_set_keymap(
    0,
    "x",
    "J",
    ':<C-u>lua require"lir.mark.actions".toggle_mark("v")<CR>',
    {noremap = true, silent = true}
  )

  -- echo cwd
  vim.api.nvim_echo({{vim.fn.expand("%:p"), "Normal"}}, false, {})
end

vim.cmd [[augroup lir-settings]]
vim.cmd [[  autocmd!]]
vim.cmd [[  autocmd Filetype lir :lua LirSettings()]]
vim.cmd [[augroup END]]
