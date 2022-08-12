"let g:coc_global_extensions = [
"			\ 'coc-extension-1', 
"			\ 'coc-extension-2'
"			\ ]



" �Ӫ�����s���j�|�ɭP���㪺����í��C�ϥΪ�����]�w�]�O 4000 ms = 4s �^
set updatetime=300

" �û���� signcolumn�]�渹���䨺�ӡA�o�ڤ����D���½�^�A�_�h�C���E�_�X�Ӯɾ�ӵ{���X�N�|�Q���k��
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " �s�������i�H�� signcolumn �M�渹�X�֡]�o�ӧڪ��������S�ݹL�A���H���D�|����˥i�H�U���d���ܡH�^
  set signcolumn=number
else
  set signcolumn=yes
endif

" �� tab ��Ĳ�o�۰ʸɥ�
" �`�N�G���J�]�w��O�o�ΩR�O `verbose imap <tab>` �T�w�o�S���Q��L�~���л\��
inoremap <silent><expr> <TAB>
	\ pumvisible() ? "\<C-n>" :
	\ <SID>check_back_space() ? "\<TAB>" :
	\ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" �� enter ��۰ʧ����Ĥ@�ӫ�ĳ���� coc �i��榡�ơ]���T�w�Ӯ榡�ƫ����O����A�ڬݤ��ӥX�ӡ^
" enter �i�H�Q���� keymap�]�ݤ����N��F�A�N��O�A�÷d���|�X���^
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
	\: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" �� \rn ���s�R�W�ܼơB��ơ]���g�u�Ÿ��v�^
nmap <leader>rn <Plug>(coc-rename)

" �o�����A�i�H���ʯB�ʵ����M���X���خء]���ɭԦ۰ʸɥ����A�����|�Ӫ��W�X�ù��A�p�G�A�Q�n�ݤU�������e�����]�w�o�ӡ^
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif
