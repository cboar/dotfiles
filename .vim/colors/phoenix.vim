" 1: red
" 2: green
" 3: yellow
" 4: blue
" 5: purple
" 6: comment
" 7: white
" 8: cursorline
" 11: orange

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "phoenix"

hi jadeHtmlArg                  ctermfg=4
hi jadeTagBlockChar             ctermfg=7
hi jadeBlockExpansionChar       ctermfg=7
hi jadeInlineDelimiter          ctermfg=11
hi jadeInterpolationDelimiter   ctermfg=11

hi htmlTagN                     ctermfg=1
hi htmlArg                      ctermfg=4
hi htmlTitle                    ctermfg=7
hi htmlTag                      ctermfg=7
hi cssFontDescriptor            ctermfg=1
hi cssBraces                    ctermfg=7

hi scalaKeyword                 ctermfg=1
hi scalaOperator                ctermfg=1
hi scalaSpecial                 ctermfg=1
hi scalaExternal                ctermfg=4
hi scalaKeywordModifier         ctermfg=4
hi scalaValueDecl               ctermfg=4
hi scalaInterpolation           ctermfg=5
hi scalaCapitalWord             ctermfg=11

hi cFormat                      ctermfg=5
hi cStructure                   ctermfg=4
hi cPeriod                      ctermfg=1
hi cMacroFunc                   ctermfg=11
hi cAllcaps                     ctermfg=11

hi jsPrototype                  ctermfg=4
hi jsFunctionKey                ctermfg=2
hi jsObjectKey                  ctermfg=3
hi jsNull                       ctermfg=5
hi jsUndefined                  ctermfg=5
hi jsNan                        ctermfg=5
hi jsLabel                      ctermfg=1
hi jsFuncArgs                   ctermfg=11
hi jsGlobalObjects              ctermfg=4
hi jsNoise                      ctermfg=1
hi jsRepeat                     ctermfg=1
hi jsThis                       ctermfg=4
hi jsFunction                   ctermfg=4
hi jsFuncCall                   ctermfg=2
hi jsFuncAssignIdent            ctermfg=2

hi shVariable                   ctermfg=4
hi shDerefVar                   ctermfg=4
hi shDerefSimple                ctermfg=4
hi shDoubleQuote                ctermfg=3
hi shQuote                      ctermfg=3
hi shStatement                  ctermfg=7
hi bashStatement                ctermfg=7

hi Visual                       ctermfg=NONE  ctermbg=0     cterm=reverse
hi CursorLine                   ctermfg=NONE  ctermbg=8     cterm=NONE
hi CursorLineNR                 ctermfg=7     ctermbg=0     cterm=NONE
hi LineNr                       ctermfg=6     ctermbg=8     cterm=NONE
hi VertSplit                    ctermfg=8     ctermbg=8     cterm=NONE
hi MatchParen                   ctermfg=NONE  ctermbg=236   cterm=NONE
hi StatusLine                   ctermfg=238   ctermbg=8     cterm=bold
hi StatusLineNC                 ctermfg=238   ctermbg=8     cterm=NONE
hi Search                       ctermfg=0     ctermbg=3     cterm=bold
hi Folded                       ctermfg=6     ctermbg=16    cterm=NONE
hi TabLineFill                  ctermfg=7     ctermbg=NONE  cterm=NONE
hi TabLine                      ctermfg=7     ctermbg=NONE  cterm=NONE

hi Normal                       ctermfg=7     ctermbg=0     cterm=NONE
hi Title						ctermfg=7     ctermbg=NONE  cterm=NONE
hi Boolean                      ctermfg=5     ctermbg=NONE  cterm=NONE
hi Character                    ctermfg=3     ctermbg=NONE  cterm=NONE
hi Comment                      ctermfg=6     ctermbg=NONE  cterm=NONE
hi Conditional                  ctermfg=1     ctermbg=NONE  cterm=NONE
hi Constant                     ctermfg=11    ctermbg=NONE  cterm=NONE
hi Define                       ctermfg=2     ctermbg=NONE  cterm=NONE
hi Float                        ctermfg=5     ctermbg=NONE  cterm=NONE
hi Function                     ctermfg=2     ctermbg=NONE  cterm=NONE
hi Identifier                   ctermfg=7     ctermbg=NONE  cterm=NONE
hi Keyword                      ctermfg=7     ctermbg=NONE  cterm=NONE
hi Label                        ctermfg=7     ctermbg=NONE  cterm=NONE
hi NonText                      ctermfg=0     ctermbg=NONE  cterm=NONE
hi Number                       ctermfg=5     ctermbg=NONE  cterm=NONE
hi Operator                     ctermfg=1     ctermbg=NONE  cterm=NONE
hi PreProc                      ctermfg=11    ctermbg=NONE  cterm=NONE
hi Special                      ctermfg=5     ctermbg=NONE  cterm=NONE
hi SpecialKey                   ctermfg=5     ctermbg=NONE  cterm=NONE
hi Statement                    ctermfg=1     ctermbg=NONE  cterm=NONE
hi StorageClass                 ctermfg=4     ctermbg=NONE  cterm=NONE
hi String                       ctermfg=3     ctermbg=NONE  cterm=NONE
hi Tag                          ctermfg=4     ctermbg=NONE  cterm=NONE
hi Type                         ctermfg=4     ctermbg=NONE  cterm=NONE
hi Error                        ctermfg=NONE  ctermbg=1     cterm=NONE
hi ExtraWhitespace              ctermfg=NONE  ctermbg=1     cterm=NONE
