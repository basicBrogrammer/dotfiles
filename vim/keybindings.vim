let mapleader = "\<Space>"

function! ToggleNERDTreeFind()
	if g:NERDTree.IsOpen()
		execute ':NERDTreeClose'
	else
		execute ':NERDTreeFind'
	endif
endfunction
map <c-n> :call ToggleNERDTreeFind()<cr>
map <c-p> :Files<cr>
map <c-b> :Buffers<cr>
map <Leader>ww :Windows<cr>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit' }
let g:fzf_buffers_jump = 1
nnoremap <Leader>fs :w<CR>
nnoremap <Leader>fy :let @*=expand("%")<CR>

" <Leader>f{char} to move to {char}
nmap <Leader>j <Plug>(easymotion-overwin-f)

"map <Leader>r <Plug>(IPy-Run)
"map <Leader>rc <Plug>(IPy-RunCell)
" files
map <Leader>ff :Neoformat<cr>

" Testing
map <Leader>tf :TestFile<cr>
map <Leader>tn :TestNearest<cr>
map <Leader>tl :TestLast<cr>
let test#ruby#rspec#options = {
  \ 'file':    '--format documentation',
  \}

" Git
nmap <Leader>gs :MagitOnly<cr>
nmap <Leader>gb :Gblame<cr>
nmap <Leader>gl :GV --graph --abbrev-commit --decorate<cr>
nmap <Leader>gd :Gdiff
