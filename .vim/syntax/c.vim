" Operators
syn match cPeriod   /\./
syn match cOperator /\(!\||\|&\|+\|-\|<\|>\|=\|%\|\/\|*\|\~\|\^\)/

syn match cUserFunction "\<\h\w*\>\(\s\|\n\)*("me=e-1
syn match cAllcaps "\<[A-Z_]\+\>\(\s\|\n\)*("me=e-1

hi def link cFunction Function
hi def link cUserFunction cFunction
hi def link cUserFunctionPointer cFunction
