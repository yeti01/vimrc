" ----------------------------------------------------------------------------
" Extension of existing commands
" ----------------------------------------------------------------------------
nmap <Leader>sf :let saveSearch=@/<CR>
               \:silent! s/ *;* *$/;/g<CR>
               \:silent! s/\(!=\\|<>\) *' *'/ IS NOT NULL/g<CR>
               \:silent! s/= *' *'/ IS NULL/g<CR>
               \:let @/=saveSearch<CR>
               \:SQLUFormatter<CR>
