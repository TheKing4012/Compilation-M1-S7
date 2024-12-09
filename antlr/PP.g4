grammar PP;

type returns [Type value] :
    'integer' {$value = new Int();}
    |'boolean' {$value = new Bool();}
    |'array of ' element = listExpr
;

listExpr returns [ArrayList<Type> value]
@init{$value = new ArrayList<Type>();} : (e = type {$value.add(e.value);})+;



// We're going to ignore all white space characters
WS : [ \t\r\n]+ -> skip ;