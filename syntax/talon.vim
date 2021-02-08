if exists("b:current_syntax")
  finish
endif

" Strings
syn region talonString start=/"/ skip=/\\"/ end=/"/
syn region talonString1 start=/'/ skip=/\\'/ end=/'/

" Functions
syn match talonFunction "\v[a-z]+" contained
syn match talonFunctionCall "\v[a-z]*\(" contains=talonFunction

" Comments
syn region talonComment start="#" end="$"

hi def link talonString String
hi def link talonString1 String
hi def link talonFunction Identifier
hi def link talonComment Comment

let b:current_syntax = "talon"
