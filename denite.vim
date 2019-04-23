" Change mappings.
call denite#custom#map('insert', '<C-j>', '<denite:move_to_next_line>', 'noremap')
call denite#custom#map('insert', '<C-k>', '<denite:move_to_previous_line>', 'noremap')
call denite#custom#map('insert', '<down>', '<denite:move_to_next_line>', 'noremap')
call denite#custom#map('insert', '<up>', '<denite:move_to_previous_line>', 'noremap')

call denite#custom#var('file/rec', 'command', ['rg', '--hidden', '--files', '--glob', '!.git', '--glob', '!node_modules'])

nnoremap <leader>b :Denite buffer -split=floating -winrow=1<CR>
nnoremap <leader>e :Denite file/rec -split=floating -winrow=1<CR>
nnoremap <leader>f :<C-u>Denite grep:. -no-empty -mode=normal<CR>
nnoremap <leader><s-f> :<C-u>DeniteCursorWord grep:. -mode=normal<CR>
