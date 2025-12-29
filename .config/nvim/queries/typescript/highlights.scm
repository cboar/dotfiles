; extends

("type" @keyword.declaration)
("interface" @keyword.declaration)
("class" @keyword.declaration)
("const" @keyword.declaration)
("var" @keyword.declaration)
("let" @keyword.declaration)
("extends" @keyword.declaration)
("async" @keyword.declaration)
("=>" @keyword.declaration)

; Highlight object property keys differently from regular member access
((object
  (pair
    key: (property_identifier) @variable.member.object))
  (#set! "priority" 105))

; Match PascalCase identifiers as @identifier at normal priority
((identifier) @identifier
  (#match? @identifier "^[A-Z]")
  (#set! "priority" 100))
