if exists('g:fern_mapping_oil_loaded')
  finish
endif
let g:fern_mapping_oil_loaded = 1

call extend(g:fern#mapping#mappings, ['oil'])

