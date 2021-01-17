-- vim: ts=4 sw=4 et:

local o   = vim.o
local g   = vim.g
local wo  = vim.wo
local bo  = vim.bo
local api = vim.api

-- Global options {{{
o.updatetime    = 800
o.termguicolors = true
o.mouse         = 'n'           -- Enable mouse
o.ignorecase    = true          -- Ignore case

o.wildmenu      = true          -- Command line completion mode
o.wildmode      = 'full'        -- Command line completion mode
o.hlsearch      = true

o.listchars     = [[tab:→ ,space:·,eol:¶,trail:·,extends:↷,precedes:↶]]

o.clipboard     = 'unnamedplus' -- Use system clipboard

o.backup        = true
local backupdir = os.getenv('HOME') .. '/.vim/files/backup//'
o.backupdir     = backupdir

o.undofile      = true
o.undolevels    = 10000
o.undoreload    = 10000
local undodir   = os.getenv('HOME') .. '/.vim/files/undo//'
o.undodir       = undodir
-- }}}

-- Window options {{{
wo.number       = true
wo.list         = true

wo.cursorline   = true
wo.cursorcolumn = true
-- }}}

-- g.loaded_node_provider   = 0
-- g.loaded_ruby_provider   = 0
g.loaded_perl_provider   = 0
g.loaded_python_provider = 0

-- Plugins options {{{

-- }}}

