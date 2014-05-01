augroup elixir
  au!
  au BufNewFile,BufRead *.ex,*.exs noremap <buffer> <leader>t :!iex -S mix<cr>
  au BufNewFile,BufRead *_test.exs noremap <buffer> <leader>t :!mix test --no-start<cr>
augroup END
