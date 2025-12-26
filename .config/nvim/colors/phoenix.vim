" 0: black
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

hi HopNextKey  cterm=bold gui=bold ctermfg=196 guifg=#ff0000
hi HopNextKey1 cterm=bold gui=bold ctermfg=208 guifg=#ff8700
hi HopNextKey2 cterm=bold gui=bold ctermfg=208 guifg=#ff8700

hi SnacksPickerGitStatusUntracked   ctermfg=2
hi SnacksPickerGitStatusModified    ctermfg=3
hi SnacksPickerDirectory            ctermfg=4
hi SnacksPickerPathHidden           ctermfg=6
hi SnacksPickerGitStatusIgnored     ctermfg=6
hi SnacksIndents               ctermfg=6
hi SnacksIndentScope           ctermfg=6
hi SnacksIndentChunk           ctermfg=6

hi typescriptTypeAnnotation     ctermfg=1
hi typescriptAssign             ctermfg=1
hi typescriptObjectColon        ctermfg=1
hi typescriptBinaryOp           ctermfg=1
hi typescriptObjectSpread       ctermfg=1
hi typescriptDotNotation        ctermfg=1
hi typescriptGlobalConsoleDot   ctermfg=1
hi typescriptGlobalObjectDot    ctermfg=1
hi typescriptTry                ctermfg=1
hi typescriptExceptions         ctermfg=1
hi typescriptGlobalJSONDot      ctermfg=1
hi typescriptTypeQuery          ctermfg=1
hi typescriptKeywordOp          ctermfg=1
hi typescriptOperator           ctermfg=1
hi typescriptConsoleMethod      ctermfg=2
hi typescriptJSONStaticMethod   ctermfg=2
hi typescriptObjectMethod       ctermfg=2
hi typescriptCacheMethod        ctermfg=2
hi typescriptHeadersMethod      ctermfg=2
hi typescriptObjectLabel        ctermfg=3
hi typescriptVariable           ctermfg=4
hi typescriptReadonlyModifier   ctermfg=4
hi typescriptInterfaceName      ctermfg=4
hi typescriptAliasDeclaration   ctermfg=4
hi typescriptTypeParameter      ctermfg=4
hi typescriptEnumKeyword        ctermfg=4
hi typescriptTypeReference      ctermfg=4
hi typescriptClassKeyword       ctermfg=4
hi typescriptFuncKeyword        ctermfg=4
hi typescriptClassExtends       ctermfg=4
hi typescriptAliasKeyword       ctermfg=4
hi typescriptInterfaceKeyword   ctermfg=4
hi typescriptCastKeyword        ctermfg=4
hi typescriptAccessibilityModifier ctermfg=4
hi typescriptAsyncFuncKeyword   ctermfg=1
hi typescriptMember             ctermfg=7
hi typescriptFuncCallArg        ctermfg=7
hi typescriptGlobal             ctermfg=7
hi typescriptPredefinedType     ctermfg=7
hi typescriptBraces             ctermfg=7
hi typescriptDOMFormProp        ctermfg=7
hi typescriptBOMWindowProp      ctermfg=7
hi typescriptDestructureLabel   ctermfg=248
hi typescriptDestructureVariable ctermfg=7
hi typescriptDefault            ctermfg=11
hi typescriptImport             ctermfg=11
hi typescriptExport             ctermfg=11

hi Visual                       ctermfg=NONE  ctermbg=0     cterm=reverse
hi CursorLine                   ctermfg=NONE  ctermbg=8     cterm=NONE
hi CursorLineNR                 ctermfg=7     ctermbg=0     cterm=NONE
hi ColorColumn                  ctermfg=NONE  ctermbg=8     cterm=NONE
hi LineNr                       ctermfg=6     ctermbg=8     cterm=NONE
hi VertSplit                    ctermfg=8     ctermbg=8     cterm=NONE
hi MatchParen                   ctermfg=NONE  ctermbg=236   cterm=NONE
hi StatusLine                   ctermfg=238   ctermbg=8     cterm=bold
hi StatusLineNC                 ctermfg=238   ctermbg=8     cterm=NONE
hi Search                       ctermfg=0     ctermbg=3     cterm=bold
hi Folded                       ctermfg=6     ctermbg=16    cterm=NONE
hi TabLineFill                  ctermfg=7     ctermbg=NONE  cterm=NONE
hi TabLine                      ctermfg=7     ctermbg=NONE  cterm=NONE

hi Normal                       ctermfg=7     ctermbg=NONE  cterm=NONE
hi Title                        ctermfg=7     ctermbg=NONE  cterm=NONE
hi Boolean                      ctermfg=5     ctermbg=NONE  cterm=NONE
hi Character                    ctermfg=3     ctermbg=NONE  cterm=NONE
hi Comment                      ctermfg=6     ctermbg=NONE  cterm=NONE
hi Conditional                  ctermfg=1     ctermbg=NONE  cterm=NONE
hi Constant                     ctermfg=11    ctermbg=NONE  cterm=NONE
hi Define                       ctermfg=2     ctermbg=NONE  cterm=NONE
hi Float                        ctermfg=5     ctermbg=NONE  cterm=NONE
hi Function                     ctermfg=2     ctermbg=NONE  cterm=NONE
hi Identifier                   ctermfg=7     ctermbg=NONE  cterm=NONE
hi Keyword                      ctermfg=1     ctermbg=NONE  cterm=NONE
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
hi Whitespace                   ctermfg=240   ctermbg=NONE  cterm=NONE
