if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn case ignore

syn keyword nesasmOpcode	ADC AND ASL BCC BCS
syn keyword nesasmOpcode	BEQ BIT BMI BNE BPL
syn keyword nesasmOpcode	BRK BVC BVS CLC CLD
syn keyword nesasmOpcode	CLI CLV CMP CPX CPY
syn keyword nesasmOpcode	DEC DEX DEY EOR INC
syn keyword nesasmOpcode	INX INY JMP JSR LDA
syn keyword nesasmOpcode	LDX LDY LSR NOP ORO
syn keyword nesasmOpcode	PHA PHP PLA PLP ROL
syn keyword nesasmOpcode	ROR RTI RTS SBC SEC
syn keyword nesasmOpcode	SED SEI STA STX STY
syn keyword nesasmOpcode	TAX TAY TSX TXA TXS
syn keyword nesasmOpcode	TYT

syn match nesasmNumber		"\(\d\|[a-f]\)\+"
syn match nesasmNumber		"#[%$]\?\(\d\|[a-f]\)\+"
syn match nesasmAddress		"[%$]\(\d\|[a-f]\)\+"

syn match nesasmIdentifier	"[@a-z_][@a-z0-9_]*"
syn match nesasmDirective	"^\s*\.[@a-z_][@a-z0-9_]*"
syn match nesasmLabel		"^\s*[@a-z_][@a-z0-9_]*:"he=e-1

syn match nesasmComment		";.*" contains=@Spell
syn region nesasmString		start=+'+ end=+'+ oneline contains=@Spell
syn region nesasmString		start=+"+ end=+"+ oneline contains=@Spell

hi def link nesasmLabel			PreProc
hi def link nesasmComment		Comment
hi def link nesasmString		String

hi def link nesasmNumber		Number
hi def link nesasmAddress		Statement

hi def link nesasmOpcode		Function
hi def link nesasmDirective 	Type

let b:current_syntax = "nesasm"
