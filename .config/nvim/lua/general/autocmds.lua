vim.cmd[[

augroup _general_settings
    autocmd FileType qf,help,man,lspinfo nnoremap <silent> <buffer> q :close<CR>
    autocmd TextYankPost * silent! lua vim.highlight.on_yank {higroup=(vim.fn['hlexists']('HighlightedyankRegion') > 0 and 'HighlightedyankRegion' or 'IncSearch'), timeout=500}
    autocmd FileType qf set nobuflisted
augroup end

augroup _git
    autocmd!
    autocmd FileType gitcommit setlocal wrap
    autocmd FileType gitcommit setlocal spell
augroup end

augroup _markdown
    autocmd!
    autocmd FileType markdown setlocal wrap
    autocmd FileType markdown setlocal spell
augroup end

augroup _auto_resize
    autocmd!
    autocmd VimResized * tabdo wincmd =
augroup end

augroup _lazy_user_config
    autocmd!
    "autocmd BufWritePost plugins.lua source <afile> | Lazy sync
augroup end

augroup _lsp
  autocmd!
  "autocmd BufWinEnter * :COQnow --shut-up
  "autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})
  "autocmd BufWritePost * FormatWrite
augroup end

]]

