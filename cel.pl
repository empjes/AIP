
celsius_to_fahrenheit(Celcius,Fahrenheit):-
 Fahrenheit is(Celsius*9/5)+32.
below_freezing(Fahrenheit):-
 Fahrenheit<32.

output
celsius_to_fahrenheit(98,Fahrenheit).
below_freezing(20).
