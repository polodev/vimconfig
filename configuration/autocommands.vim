" automatically create parent dirs on write buffer
augroup BWCCreateDir
    au!
    autocmd BufWritePre * if expand("<afile>")!~#'^\w\+:/' && !isdirectory(expand("%:h")) | execute "silent! !mkdir -p %:h" | redraw! | endif
augroup END

" Relative numbers in command mode
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber

autocmd StdinReadPre * let s:std_in=1

" Enable syntax highlighting for config files
autocmd FileType vim set syntax=vim

" Highlight current line in current window
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline

" Open the doc or definition in vertical split
au FileType go nmap <buffer> K <Plug>(go-doc-vertical)
au FileType go nmap <buffer> <leader>K <Plug>(go-def-vertical)
au FileType go nmap <buffer> <C-G> :GoInfo<CR>

