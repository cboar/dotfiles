syn match GlobalFuncCall "\w\(\w\)*("he=e-1,me=e-1
syn match GlobalCapital /\<[A-Z][A-Za-z0-9_$]*\>/
syn match GlobalOperator /\(\.\|:\|!\||\|&\|+\|-\|<\|>\|=\|%\|\/\|*\|\~\|\^\)/
hi link GlobalFuncCall Function
hi link GlobalOperator Operator
hi link GlobalCapital Constant
