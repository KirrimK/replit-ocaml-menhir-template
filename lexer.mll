{
    open Parser
    exception Error of string
}

rule token = parse
    eof { EOF }
|   _ { raise (Error (Printf.sprintf "At offset %d: unexpected character.\n" (Lexing.lexeme_start lexbuf))) }