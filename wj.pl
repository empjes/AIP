water_jug(X,Y):-X>4,Y<3,write('4L water jug is overflowed.'),nl.
water_jug(X,Y):-X<4,Y>3,write('3L water jug is overflowed.'),nl.
water_jug(X,Y):-X>4,Y>3,write('Both water jugs are overflowed.'),nl.
water_jug(X,Y):-
(X=:=0,Y=:=0,nl,write('4L:0&3L:3(Action:Fill 3L water jug.)'),YY is 3,water_jug(X,YY));
(X=:=0,Y=:=0,nl,write('4L:4&3L:0(Action:Fill 4L water jug.)'),XX is 4,water_jug(XX,Y));
(X=:=2,Y=:=0,nl,write('4L:2&3L:0(Action:Goal reached.)'));
(X=:=2,Y=:=3,nl,write('4L:2&3L:3(Action:Goal reached.)'));

(X=:=0,Y=:=3,nl,write('4L:3&3L:0(Action:Pour water from 3L to 4L water jug.)'),XX is 3,YY is 0,water_jug(XX,YY));
(X=:=3,Y=:=0,nl,write('4L:3&3L:3(Action:Fill 3L water jug.)'),YY is 3,water_jug(X,YY));
(X=:=3,Y=:=3,nl,write('4L:4&3L:2(Action:Pour water from 3L water 4L water jug until 4L water jug get filled.)'),XX is X+1,YY is Y-1,water_jug(XX,YY));
(X=:=4,Y=:=2,nl,write('4L:0&3L:2(Action:Empty 4L water jug.)'),XX is 0,water_jug(XX,Y));
(X=:=0,Y=:=2,nl,write('4L:2&3L:0(Action:Swapping water from 3L to 4L water jug.)'),XX is Y,YY is X,water_jug(XX,YY));

(X=:=0,Y=:=0,nl,write('4L:4&3L:0(Action:Fill 4L water jug.)'),XX is 4,water_jug(XX,Y));
(X=:=4,Y=:=0,nl,write('4L:1&3L:3(Action:Pour water from 4L to 3L jug until it gets filled.)'),XX is X-3,YY is Y+3,water_jug(XX,YY));
(X=:=1,Y=:=3,nl,write('4L:1&3L:0(Action:Empty 3L water jug.)'),YY is 0,water_jug(X,YY));
(X=:=1,Y=:=0,nl,write('4L:0&3L:1(Action:Swapping water from 4L to 3L jug.)'),XX is Y,YY is X,water_jug(XX,YY));
(X=:=0,Y=:=1,nl,write('4L:4&3L:1(Action:Fill the 4L water jug.)'),XX is 4,water_jug(XX,Y));
(X=:=4,Y=:=1,nl,write('4L:2&3L:3(Action:Pour water fromn 4L to 3L jug until it gets filled.)'),XX is X-2,YY is Y+2,water_jug(XX,YY)).
