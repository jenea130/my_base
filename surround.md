ys (you surround/add)
cs (change surrounding)
ds (delete surrounding)

// ys<motion><delimiter>

hello -> "hello" // ysw"
"hello" -> ( "hello" ) // ysa"(
( "hello" ) -> { ( "hello" ) } // s{}

{ ( "hello" ) } -> ( "hello" ) // ds{

"hello" -> 'hello' // cs"'

<div>Hello</div> -> <p>Hello</p> // cst cursor on H
