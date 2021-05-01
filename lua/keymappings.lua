local utils = require('utils')
local map = utils.map
local opt = utils.opt
local wk = require('which-key')

opt('g', 'mapleader', [[ ]])

map('n', '<C-l>', '<cmd>noh<CR>') -- clear highlighting
map('i', '<C-j>', '<Esc>') -- leave insert mode
map('n', '<C-_>', "<cmd>CommentToggle<cr>") -- leave insert mode
map('v', '<C-_>', "<Esc><cmd>'<,'>CommentToggle<CR>gv") -- leave insert mode

wk.register({
    f = {
        name = "File",
        f = {"<cmd>Telescope find_files<cr>", "Find File"},
        r = {"<cmd>Telescope oldfiles<cr>", "Recent Files"},
        n = { "<cmd>enew<cr>", "New File" },
	e = {"<cmd>NvimTreeToggle<cr>", "Open File Explorer"}
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
        s = {"<cmd>BufferPick<cr>", "Pick a buffer"}
    },
}, {prefix = "<Leader>"})
