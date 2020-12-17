local vim = vim

local header = [[

                _
     _ ____   _(_)_ __ ___
    | `_ \ \ / / | `_ ` _ \
    | | | \ V /| | | | | | |
    |_| |_|\_/ |_|_| |_| |_|
   
]]

return {
    init = function()
        vim.g.startify_custom_header = header
        vim.fn.execute('Startify')
    end
}

