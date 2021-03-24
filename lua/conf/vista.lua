local M = {}
function M.setup()
    vim.api.nvim_set_keymap(
        "n", "<Space>v", "<cmd>Vista!!<CR>", {noremap = true, silent = true}
    )

    vim.g.vista_default_executive = 'ctags'
    vim.g.vista_executive_for = {
        c = 'nvim_lsp',
        cpp = 'nvim_lsp',
        lua = 'nvim_lsp'
    }

end
return M

