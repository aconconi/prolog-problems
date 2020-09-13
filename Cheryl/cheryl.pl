/* belongsToLis(E,L): E belongs to list L */

belongs(E,[E|_]).
belongs(E,[_|C]):-
	belongs(E,C).

countSolutions(X,G,N) :-
    findall(X,G,L),
    length(L,N).


month(may).
month(june).
month(july).
month(august).

day(14).
day(15).
day(16).
day(17).
day(18).
day(19).

date(may,15).
date(may,16).
date(may,19).
date(june,17).
date(june,18).
date(july,14).
date(july,16).
date(august,14).
date(august,15).
date(august,17).

knows(albert,month).
knows(bernard,day).

/* Albert: I don't know when Cheryl's birthday is,
 * but I know that Bernard doesn't know too. */



