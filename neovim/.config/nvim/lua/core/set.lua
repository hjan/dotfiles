
HOME = os.getenv("HOME")

vim.g.mapleader = " "


-- Basic settings --
vim.opt.encoding = "utf-8"
vim.opt.backspace = "indent,eol,start"
vim.opt.completeopt = 'menuone,noselect'
vim.opt.history = 1000
vim.opt.dictionary = '/usr/share/dict/words'
vim.opt.startofline = true
vim.opt.mouse = ""

-- Mapping waiting time --
vim.opt.timeout = false
vim.opt.ttimeout = true
vim.opt.ttimeoutlen = 100

-- Display --
vim.opt.showmatch = true
vim.opt.scrolloff = 8
vim.opt.synmaxcol = 300
vim.opt.laststatus = 2

vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.opt.guicursor = ""

vim.opt.list = true
vim.opt.listchars = 'tab:▸ ,lead:.'

local function range(from, to)
    local t = {}
    for i = from, to do t[#t + 1] = i end
    return t
end
vim.opt.colorcolumn = range(81, 335)
vim.api.nvim_create_autocmd({"ColorScheme", "VimEnter"}, {
    group = vim.api.nvim_create_augroup('Color', {}),
    pattern = "*",
    callback = function ()
        vim.api.nvim_set_hl(0, "ColorColumn", { bg = "#2c2d27" })
        vim.api.nvim_set_hl(0, "WhiteSpace", { bg = "None", fg = "#838383"})
        vim.api.nvim_set_hl(0, "CursorLine", { bg = "#2c2d27" })
        vim.api.nvim_set_hl(0, "String", { fg = "#ffffaf" })
    end
})

vim.w.m1 = vim.fn.matchadd("ErrorMsg", "\\s\\+$")

vim.opt.foldenable = false
vim.opt.foldlevel = 4
vim.opt.foldmethod = 'syntax'
vim.opt.wrap = false
vim.opt.eol = false
vim.opt.showbreak = '↪'

-- Sidebar --
vim.opt.number = true
vim.wo.relativenumber = true
vim.opt.numberwidth = 3
vim.opt.signcolumn = 'yes'
vim.opt.modelines = 0
vim.opt.showcmd = true

-- Search --
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Whitespace --
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
-- vim.opt.formatoptions
vim.opt.expandtab = true

-- Backup files --
vim.opt.backup = true
vim.opt.writebackup = true
vim.opt.swapfile = true
vim.opt.undodir = HOME .. '/.vim/undo//'
vim.opt.backupdir = HOME .. '/.vim/backup//'
vim.opt.directory = HOME .. '/.vim/tmp//'

-- Misc --
vim.cmd('colorscheme xoria256')
--vim.opt.isfname = ("@-@")
vim.opt.updatetime = 50

