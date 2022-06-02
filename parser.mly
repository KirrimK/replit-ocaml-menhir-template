%{ open Ast %}

%token EOL

%start <Ast.stat> main

%%

main:
    EOL {Noop}