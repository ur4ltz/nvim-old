M = {}

function M.setup()
    local opts = {noremap = true, silent = true}
    vim.api.nvim_set_keymap('n', '<Space>h', "<cmd>lua require('telescope.builtin').help_tags{}<CR>", opts)
end

function M.config()
    local telescope = require('telescope')
    telescope.setup {
        defaults = {
            layout_strategy = 'flex',
            layout_default = {
                horizontal = {
                    width_padding = 0.1,
                    height_padding = 0.1,
                    preview_width = 0.6,
                },
                vertical = {
                    width_padding = 0.05,
                    height_padding = 1,
                    preview_width = 0.5,
                },
            },
            preview_cutoff = 100,
        },
    }
end

return M
