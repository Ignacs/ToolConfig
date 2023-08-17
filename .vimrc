"set path^=/home1/rox_wu/lab/local_working/SEI_PPP_customized/app/gpl/ppp-2.4.7/pppd
set path^=~/lab/charter_proejct/ca-oam-1.0/files


" Source a global configuration file if available
" if filereadable("/etc/vim/vimrc.local")
"   source /etc/vim/vimrc.local
" endif
source ~/.vim/vimrcs/general_vimrc
source ~/.vim/vimrcs/scope_vimrc
source ~/.vim/vimrcs/status_line_vimrc
source ~/.vim/vimrcs/key_mapping_vimrc
source ~/.vim/vimrcs/visual_mode_vimrc
source ~/.vim/vimrcs/color_vimrc
source ~/.vim/vimrcs/file_type_vimrc

source ~/.vim/vimrcs/plugins_vimrc



" All system-wide defaults are set in $VIMRUNTIME/debian.vim (usually just
" /usr/share/vim/vimcurrent/debian.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vim/vimrc), since debian.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing debian.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

":highlight 
" save .vimrc, auto exec, .vimrc and apply immediately.
autocmd! bufwritepost .vimrc source %


"===================================================================================
" BUFFERS, WINDOWS
"===================================================================================
"-------------------------------------------------------------------------------
" The current directory is the directory of the file in the current window.
"-------------------------------------------------------------------------------
if has("autocmd")
	autocmd BufEnter * :lchdir %:p:h
endif

"
"-------------------------------------------------------------------------------
" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).
"-------------------------------------------------------------------------------
if has("autocmd")
    autocmd BufRead *.txt set tw=78
    autocmd BufReadPost *
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \   exe "normal g'\"" |
    \ endif
endif
