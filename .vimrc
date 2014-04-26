augroup elixir
  au!
  au BufNewFile,BufRead *.ex,*.exs noremap <buffer> <leader>t :!iex -S mix<cr>
augroup END
