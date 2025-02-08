" quit when a syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

syn match envComment '^#.*'

syn match envVariableUnassigned "^\<\h\w*$"

syn match envVariable "^\<\h\w*\ze=" nextgroup=envVarAssign
syn match envVarAssign contained "=" nextgroup=envVar,envQuotedVarOpen,envSpace
syn match envVar contained "\h\w*"
syn match envSpace contained "\s\+" nextgroup=envQuotedVarOpen
syn match envQuotedVarOpen contained "[\"']"

syn match envSpace "\s$"
syn match envQuotedVarClose "[\"']$"


let b:current_syntax = "env"

hi def link envComment Comment

hi def link envVariableUnassigned Error

hi def link envVariable Identifier
hi def link envVarAssign Operator
hi def link envSpace Error
hi def link envQuotedVarOpen Error
hi def link envQuotedVarClose Error
