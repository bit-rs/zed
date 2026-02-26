; Keywords
[
  "let" "fn" "type" "return" "if" "else"
  "for" "while" "in" "break" "continue"
  "use" "as" "raise" "bail"
  "satl" "with" "send" "to" "launch" "recv"
] @keyword

; Null
(null_literal) @constant.builtin

; Booleans
(bool_literal) @boolean

; Literals
(integer_literal) @number
(decimal_literal) @number.float
(string_literal) @string

; Comments
(line_comment) @comment
(block_comment) @comment

; Satellites
(satellite_declaration name: (identifier) @function)
(launch_expression satellite: (identifier) @function.call)

; Functions
(function_declaration name: (identifier) @function)
(call_expression function: (identifier) @function.call)
(call_expression function: (member_expression property: (identifier) @function.method))

; Types
(type_declaration name: (identifier) @type)

; Parameters
(parameter_list (identifier) @variable.parameter)

; Variables
(variable_declaration name: (identifier) @variable)

; Self
((identifier) @variable.special
  (#eq? @variable.special "self"))

; Operators
[
  "+" "-" "*" "/" "%" "&&" "||" "&" "|" "^"
  ">" "<" "==" "!=" "!" "=" "+=" "-=" "*=" "/=" "%=" "&=" "|="
] @operator

; Punctuation
[ "(" ")" "{" "}" "[" "]" ] @punctuation.bracket
[ ";" "," "." ".." "..=" ] @punctuation.delimiter

(identifier) @variable
