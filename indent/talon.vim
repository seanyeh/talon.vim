if exists("b:did_indent")
  finish
endif
let b:did_indent = 1

if exists("*GetTalonIndent")
  finish
endif

setlocal indentexpr=GetTalonIndent()
setlocal autoindent

function GetTalonIndent()
  let prev_lnum = v:lnum - 1
  if prev_lnum == 0
    return 0
  endif
  let prev_line = getline(prev_lnum)

  if prev_line =~ "^[^#]\*:\\s\*$"
    return shiftwidth()
  endif

  if prev_line =~ "^\\s\*$"
    return 0
  else
    return indent(prev_lnum)
  endif
endfunction
