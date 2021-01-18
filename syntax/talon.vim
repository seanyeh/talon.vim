if exists("b:current_syntax")
  finish
endif

" Comments
syn region talonComment start="#" end="$"

" Strings
syn region talonString start=/"/ skip=/\\"/ end=/"/
syn region talonString1 start=/'/ skip=/\\'/ end=/'/

" Functions
syn match talonFunction "\v[a-z]+" contained
syn match talonFunctionCall "\v.*\(" contains=talonFunction

hi def link talonComment Comment
hi def link talonString String
hi def link talonString1 String
hi def link talonFunction Identifier

let b:current_syntax = "talon"
