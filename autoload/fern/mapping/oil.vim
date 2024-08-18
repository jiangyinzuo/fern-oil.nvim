function! s:open_cursor_path() abort
  let l:helper = fern#helper#new()
  let nodes = l:helper.sync.get_cursor_node()
  if nodes['status'] != 0
    exe ':Oil ' . nodes['_path']
  else
    echo "Please select a directory."
  endif
endfunction

function! fern#mapping#oil#init(disable_default_mappings) abort
  nnoremap <buffer><silent> <Plug>(fern-action-oil-dirs) :<C-u>call <SID>open_cursor_path()<CR>

  if !a:disable_default_mappings && !g:fern#mapping#oil#disable_default_mappings
    nmap <buffer> <leader>to <Plug>(fern-action-oil-dirs)
  endif
endfunction

let g:fern#mapping#oil#disable_default_mappings = get(g:, 'fern#mapping#oil#disable_default_mappings', 0)
