% Define the distances
distances(a,b,10).
distances(a,c,15).
distances(a,d,20).
distances(b,c,35).
distances(b,d,25).
distances(c,d,30).
distances(b,a,10).
distances(c,a,15).
distances(d,a,20).
distances(c,b,35).
distances(d,b,25).
distances(d,c,30).
path(X,Y,D) :- distances(X,Y,D).
path(X,Y,D) :- distances(Y,X,D).
route([X,Y], D) :-
    path(X,Y,D).
route([X,Y|Rest], D) :-
    path(X,Y,D1),
    route([Y|Rest], D2),
    D is D1 + D2.
permutation([], []).
permutation(L, [H|T]) :-
    select(H, L, R),
    permutation(R, T).
tsp(Start, Path, MinDist) :-
    findall(D, (permutation([b,c,d], Perm), route([Start|Perm], D)), Distances),
    min_list(Distances, MinDist),
    permutation([b,c,d], Perm),
    route([Start|Perm], MinDist),
    Path = [Start|Perm].
min_list([Min], Min).
min_list([H,K|T], Min) :-
    H =< K,
    min_list([H|T], Min).
min_list([H,K|T], Min) :-
    H > K,
    min_list([K|T], Min).