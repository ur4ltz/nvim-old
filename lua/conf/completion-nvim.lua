local M = {}

function M.setup()
    vim.api.nvim_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")

    vim.o.completeopt                     = 'menuone,noinsert,noselect'

    vim.g.completion_enable_auto_popup    = 1
    vim.g.completion_enable_in_comment    = 1
    vim.g.completion_enable_snippet       = 'vim-vsnip'
    vim.g.completion_auto_change_source   = 1

    vim.g.completion_matching_ignore_case = 1

    vim.g.completion_chain_complete_list = {
        default = {
            default = {
                {complete_items = {'lsp', 'ts', 'snippet'}},
                {complete_items = {'buffer'}},
                {mode = '<C-p>'},
                {mode = '<C-n>'}
            },
            comment = {
                {complete_items = {'buffer'}}
            },
            string = {
                {complete_items = {'path'}, triggered_only = {"/"}},
                {complete_items = {'buffer'}}
            }
        },
--        lua = {
--            default = {
--                {complete_items = {'lsp', 'ts', 'snippet'}},
--                {complete_items = {'buffer'}},
--                {mode = '<C-p>'},
--                {mode = '<C-n>'}
--            },
--            comment = {},
--            string = {
--                {complete_items = {'path'}, triggered_only = {"/"}}
--            }
--        }
    }
end

function M.config()
    vim.cmd[[ augroup completion_nvim_autocmd ]]
    vim.cmd[[ autocmd! ]]
    vim.cmd[[ autocmd BufEnter *         lua require'completion'.on_attach()]]
    vim.cmd[[ autocmd BufEnter *         let g:completion_trigger_character = ['.'] ]]
    vim.cmd[[ autocmd BufEnter *.c,*.cpp let g:completion_trigger_character = ['.', '::', '->'] ]]
    vim.cmd[[ augroup END ]]
end

return M
-- vim: ts=4 sw=4 et:
