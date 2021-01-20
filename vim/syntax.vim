" linting && autocorrect
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'ruby': ['rubocop'],
\   'javascript': ['prettier'],
\   'jsx': ['prettier'],
\   'typescript': ['prettier'],
\   'json': ['prettier'],
\   'elixir': ['mix_format'],
\}
let g:ale_fix_on_save = 1
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.hbs,*.jsx'
let g:closetag_xhtml_filetypes = 'xhtml,jsx'
let g:mustache_abbreviations = 1

" NERDTrees File highlighting
"function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 "exec 'autocmd FileType nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 ""exec 'autocmd FileType nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
"endfunction

"call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
"call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
"call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
"call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
"call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
"call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
"call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
"call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
"call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
"call NERDTreeHighlightFile('rb', 'Red', 'none', '#CC342D', '#151515')
"call NERDTreeHighlightFile('ex', 'Purple', 'none', '#4e2a8e', '#151515')
"call NERDTreeHighlightFile('ds_store', 'Gray', 'none', '#686868', '#151515')
"call NERDTreeHighlightFile('gitconfig', 'Gray', 'none', '#686868', '#151515')
"call NERDTreeHighlightFile('gitignore', 'Gray', 'none', '#686868', '#151515')
"call NERDTreeHighlightFile('bashrc', 'Gray', 'none', '#686868', '#151515')
"call NERDTreeHighlightFile('bashprofile', 'Gray', 'none', '#686868', '#151515')

" NERDTrees File highlighting only the glyph/icon
" test highlight just the glyph (icons) in nerdtree:
"autocmd filetype nerdtree highlight html_icon ctermbg=none ctermfg=Red guifg=#ffa500
"autocmd filetype nerdtree syn match html_icon ## containedin=NERDTreeFile,html
"autocmd filetype nerdtree highlight ruby_icon ctermbg=none ctermfg=Red guifg=#ffa500
"autocmd filetype nerdtree syn match ruby_icon ## containedin=NERDTreeFile
"

let g:sol = {
			\"gui": {
				\"base03": "#002b36",
				\"base02": "#073642",
				\"base01": "#586e75",
				\"base00": "#657b83",
				\"base0": "#839496",
				\"base1": "#93a1a1",
				\"base2": "#eee8d5",
				\"base3": "#fdf6e3",
				\"yellow": "#b58900",
				\"orange": "#cb4b16",
				\"red": "#dc322f",
				\"magenta": "#d33682",
				\"violet": "#6c71c4",
				\"blue": "#268bd2",
				\"cyan": "#2aa198",
				\"green": "#719e07"
			\},
			\"cterm": {
				\"base03": 8,
				\"base02": 0,
				\"base01": 10,
				\"base00": 11,
				\"base0": 12,
				\"base1": 14,
				\"base2": 7,
				\"base3": 15,
				\"yellow": 3,
				\"orange": 9,
				\"red": 1,
				\"magenta": 5,
				\"violet": 13,
				\"blue": 4,
				\"cyan": 6,
				\"green": 2
			\}
		\}
function! DeviconsColors(config)
			let colors = keys(a:config)
			augroup devicons_colors
				autocmd!
				for color in colors
					if color == 'normal'
						exec 'autocmd FileType nerdtree,startify if &background == ''dark'' | '.
							\ 'highlight devicons_'.color.' guifg='.g:sol.gui.base01.' ctermfg='.g:sol.cterm.base01.' | '.
							\ 'else | '.
							\ 'highlight devicons_'.color.' guifg='.g:sol.gui.base1.' ctermfg='.g:sol.cterm.base1.' | '.
							\ 'endif'
					elseif color == 'emphasize'
						exec 'autocmd FileType nerdtree,startify if &background == ''dark'' | '.
							\ 'highlight devicons_'.color.' guifg='.g:sol.gui.base1.' ctermfg='.g:sol.cterm.base1.' | '.
							\ 'else | '.
							\ 'highlight devicons_'.color.' guifg='.g:sol.gui.base01.' ctermfg='.g:sol.cterm.base01.' | '.
							\ 'endif'
					else
						exec 'autocmd FileType nerdtree,startify highlight devicons_'.color.' guifg='.g:sol.gui[color].' ctermfg='.g:sol.cterm[color]
					endif
					exec 'autocmd FileType nerdtree,startify syntax match devicons_'.color.' /\v'.join(a:config[color], '|').'/ containedin=ALL'
				endfor
			augroup END
		endfunction
		let g:devicons_colors = {
			\'normal': ['', '', '', '', ''],
			\'emphasize': ['', '', '', '', '', '', '', '', '', '', ''],
			\'yellow': ['', '', ''],
			\'orange': ['', '', '', 'λ', '', ''],
			\'red': ['', '', '', '', '', '', '', '', ''],
			\'magenta': [''],
			\'violet': ['', '', '', '', ''],
			\'blue': ['', '', '', '', '', '', '', '', '', '', '', '', ''],
			\'cyan': ['', '', '', ''],
			\'green': ['', '', '', '']
		\}
		call DeviconsColors(g:devicons_colors)
