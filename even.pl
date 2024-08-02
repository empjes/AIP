evenlength([]).
evenlength([First|Rest]):-oddlength(Rest).
oddlength([_]).
oddlength([First|Rest]):-evenlength(Rest).
output
evenlength([a,b,c,d]).
oddlength([a,b,c]).

