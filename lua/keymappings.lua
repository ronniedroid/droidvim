local utils = require("utils")
local map = utils.map
local opt = utils.opt
local wk = require("which-key")

opt("g", "mapleader", [[ ]])

map("n", "<C-l>", "<cmd>noh<CR>") -- clear highlighting
map("i", "<C-j>", "<Esc>") -- leave insert mode
map("n", "<C-_>", "<cmd>CommentToggle<cr>")
map("v", "<C-_>", "<Esc><cmd>'<,'>CommentToggle<CR>gv")
map("n", "<C-f>", "<cmd>Format<CR>")
map("i", "<C-f>", "<cmd>Format<CR>")
map("n", "<C-c><C-e>", "<cmd>luafile%<cr>")

wk.register(
  {
    f = {
      name = "File",
      f = {"<cmd>Telescope find_files<cr>", "Find File"},
      r = {"<cmd>Telescope oldfiles<cr>", "Recent Files"},
      n = {"<cmd>enew<cr>", "New File"},
      e = {"<cmd>lua require'lir.float'.toggle()<cr>", "Open File Explorer"},
      t = {"<cmd>NvimTreeToggle<cr>", "Open Nvim Tree"}
    },
    p = {
      name = "Projects",
      p = {":lua require'telescope'.extensions.project.project{}<CR>", "Projects"}
    },
    b = {
      name = "Buffer",
      l = {"<cmd>BufferPrevious<cr>", "Next buffer"},
      L = {"<cmd>BufferMoveNext<cr>", "Move buffer to left"},
      h = {"<cmd>BufferNext<cr>", "Previous buffer"},
      H = {"<cmd>BufferMovePrevious<cr>", "Move buffer to right"},
      ["1"] = {"<cmd>BufferGoto 1<cr>", "Go to 1"},
      ["2"] = {"<cmd>BufferGoto 2<cr>", "Go to 2"},
      ["3"] = {"<cmd>BufferGoto 3<cr>", "Go to 3"},
      ["4"] = {"<cmd>BufferGoto 4<cr>", "Go to 4"},
      ["5"] = {"<cmd>BufferGoto 5<cr>", "Go to 5"},
      ["6"] = {"<cmd>BufferGoto 6<cr>", "Go to 6"},
      ["7"] = {"<cmd>BufferGoto 7<cr>", "Go to 7"},
      ["8"] = {"<cmd>BufferGoto 8<cr>", "Go to 8"},
      ["9"] = {"<cmd>BufferGoto 9<cr>", "Go to 9"},
      c = {"<cmd>BufferClose<cr>", "Close buffer"},
      o = {"<cmd>BufferCloseAllButCurrent<cr>", "Keep only current buffer"},
      s = {"<cmd>BufferPick<cr>", "Pick a buffer"}
    },
    w = {
      name = "Window",
      h = {"<C-w><C-h>", "Move to left window"},
      j = {"<C-w><C-j>", "Move to below window"},
      k = {"<C-w><C-k>", "Move to above window"},
      l = {"<C-w><C-l>", "Move to right window"},
      w = {"<C-w>w", "Move to other window"},
      x = {"<C-w>x", "Swap with other window"},
      s = {"<C-w>s", "Split window"},
      v = {"<C-w>v", "Split window vertically"},
      c = {"<C-w>q", "Close window"},
      o = {"<C-w>o", "Keep only current window"},
      t = {"<C-w>T", "Move window to a tab"},
      n = {"<C-w>=", "Normalize Windows"},
      m = {
        name = "Max",
        w = {"<C-w>|", "Max out width"},
        h = {"<C-w>_", "Max out hight"}
      },
      i = {
        name = "Increase",
        w = {"<cmd>vertical resize +10<cr>", "Increase width"},
        h = {"<cmd>resize +10<cr>", "Increase hight"}
      },
      d = {
        name = "Decrease",
        w = {"<cmd>vertical resize -10<cr>", "Decrease width"},
        h = {"<cmd>resize -10<cr>", "Decrease hight"}
      }
    }
  },
  {prefix = "<Leader>"}
)
