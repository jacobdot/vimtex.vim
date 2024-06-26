" VimTeX - LaTeX plugin for Vim
"
" Maintainer: Karl Yngve Lervåg
" Email:      karl.yngve@gmail.com
"

if !get(g:, 'vimtex_enabled', 1)
  finish
endif

if exists('b:did_ftplugin')
  finish
endif
let b:did_ftplugin = 1

if !(!get(g:, 'vimtex_version_check', 1)
      \ || has('nvim-0.9.5')
      \ || has('patch-8.2.3995'))
  echoerr 'Error: VimTeX does not support your version of Vim'
  echom 'Please update to Vim 8.2.3995 or neovim 0.9.5 or later!'
  echom 'For more info, please see :h vimtex_version_check'
  finish
endif

call vimtex#init()
