" Vim syntax file
" Language:         Fabric Syntax Highlighting
" Maintainer:       Cam Wright
" Latest Revision:  10 March 2014
" Version:			0.1

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif
			
if !exists("main_syntax")
  let main_syntax = 'fabric'
endif

runtime syntax/python.vim
unlet b:current_syntax

syn keyword run local cd lcd settings sudo task disconnect_all
