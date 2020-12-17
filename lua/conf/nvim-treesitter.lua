local M = {}

function M.config()
    require'nvim-treesitter.configs'.setup{
        ensure_installed = 'all',
        highlight = {
            enable = true,
            disable = {}
        },
        indent = {
            enable = true
        }
    }
end

return M
