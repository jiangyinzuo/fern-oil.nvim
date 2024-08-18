# fern-oil.nvim

Open oil.nvim in vim-fern.

## Dependencies

- [lambdalisue/vim-fern](https://github.com/lambdalisue/vim-fern)
- [stevearc/oil.nvim](https://github.com/stevearc/oil.nvim)

## Usage

Change the default mappings:

```vim
let g:fern#mapping#oil#disable_default_mappings = 1
" the default mappings are:
nmap <buffer> <leader>to <Plug>(fern-action-oil-dirs)
```
