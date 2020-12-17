local o   = vim.o
local g   = vim.g
local bo  = vim.bo
local api = vim.api

g.loaded_python_provider = 0

o.updatetime    = 800
o.termguicolors = true
o.mouse         = 'n'           -- Enable mouse
o.ignorecase    = true          -- Ignore case

o.wildmenu      = true          -- Command line completion mode
o.wildmode      = 'full'        -- Command line completion mode
o.hlsearch      = true

o.clipboard     = 'unnamedplus' -- Use system clipboard

o.backup        = true
local backupdir = os.getenv('HOME') .. '/.vim/files/backup//'
o.backupdir     = backupdir

o.undofile      = true
o.undolevels    = 10000
o.undoreload    = 10000
local undodir   = os.getenv('HOME') .. '/.vim/files/undo//'
o.undodir       = undodir

api.nvim_exec([[

   set number

   set cursorline
   set cursorcolumn

   set smartindent
   set tabstop=4
   set expandtab

]], '')
-- require('plugins')

