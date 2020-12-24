" Startify: {{{
let g:startify_files_number           = 20
let g:startify_change_to_vcs_root     = 1
let g:startify_padding_left           = 5

let g:startify_session_autoload       = 1

let g:startify_session_persistence    = 1
let g:startify_session_delete_buffers = 1
let g:startify_session_sort           = 1

let g:startify_bookmarks = [
      \ {'v': '~/.vimrc'},
      \ {'z': '~/.zshrc'},
      \ {'a': '~/.config/alacritty/alacritty.yml'},
      \ {'i': '~/.config/nvim/lua/plugins.lua'}
      \ ]

let g:startify_list = [
      \ ['   Bookmarks'], 'bookmarks',
      \ ['   Sessions'],  'sessions',
      \ ['   Files'],     'files',
      \ ['   Directory'], 'dir',
      \ ['   Commands'],  'commands']

if has('nvim')
  let g:startify_ascii = [
        \ '            _',
        \ ' _ ____   _(_)_ __ ___',
        \ '| `_ \ \ / / | `_ ` _ \',
        \ '| | | \ V /| | | | | | |',
        \ '|_| |_|\_/ |_|_| |_| |_|',
        \ ]
else
  let g:startify_ascii = [
        \ '       _',
        \ '__   _(_)_ __ ___',
        \ '\ \ / / | `_ ` _ \',
        \ ' \ V /| | | | | | |',
        \ '  \_/ |_|_| |_| |_|',
        \ ]
endif
let g:startify_custom_header = map(g:startify_ascii, "\"   \".v:val")

" }}}
