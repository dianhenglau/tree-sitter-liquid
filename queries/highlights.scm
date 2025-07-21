([
  "{{"
  "}}"
  "{{-"
  "-}}"
  "{%"
  "%}"
  "{%-"
  "-%}"
  ] @tag.delimiter)


([
  "]"
  "["
  ")"
  "("
  ] @punctuation.bracket)

([
  ","
  "."
  ] @punctuation.delimiter)


([
  "as"
  "assign"
  (break_statement)
  "by"
  "capture"
  "case"
  (continue_statement)
  (custom_unpaired_statement)
  "cycle"
  "decrement"
  "doc"
  "echo"
  "else"
  "elsif"
  "endcapture"
  "endcase"
  "enddoc"
  "endfor"
  "endform"
  "endif"
  "endjavascript"
  "endpaginate"
  "endraw"
  "endschema"
  "endstyle"
  "endstylesheet"
  "endtablerow"
  "endunless"
  "for"
  "form"
  "if"
  "include"
  "include_relative"
  "increment"
  "javascript"
  "layout"
  "liquid"
  "paginate"
  "raw"
  "render"
  "schema"
  "section"
  "sections"
  "style"
  "stylesheet"
  "tablerow"
  "unless"
  "when"
  "with"
  ] @keyword)

([
  "and"
  "contains"
  "in"
  "or"
  ] @keyword.operator)

([
  "|"
  ":"
  "="
  (predicate)
  ] @operator)

((identifier) @variable)
((string) @string)
((boolean) @boolean)
((number) @number)

(filter
  name: (identifier) @function.call)

(raw_statement
  (raw_content) @text.reference)

((comment) @comment)

((doc) @comment.documentation)
((doc_content) @comment.documentation)
((doc_description_annotation) @keyword)
((doc_example_annotation) @comment.documentation)
((doc_example_content) @none)
((doc_param_name) @variable)
((doc_type) @type)
("@param" @keyword)
("@example" @keyword)
