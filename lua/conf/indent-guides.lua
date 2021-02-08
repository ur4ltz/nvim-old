-- vim: ts=4 sw=4 et:

require('indent_guides').setup {
    indent_levels        = 30,
    indent_start_level   = 1,
    indent_space_guides  = true,
    indent_tab_guides    = true,
    indent_pretty_guides = false,
    indent_soft_pattern  = '\\s',
    exclude_filetypes    = {'NvimTree', 'packer', 'help'},
    even_colors          = {fg = '#2E323A',bg = '#34383F'},
    odd_colors           = {fg = '#34383F',bg = '#2E323A'}

}

