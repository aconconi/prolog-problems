/* belongsToLis(E,L): E belongs to list L */

belongs(E,[E|_]).
belongs(E,[_|C]):-
	belongs(E,C).

countSolutions(X,G,N) :-
    findall(X,G,L),
    length(L,N).


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

month_has_deciding_day(Month):-
  date(Month, Day),
  findall(M, date(M, Day), [_]).

s1(Month, Day):-
  date(Month, Day),
  findall(X, date(Month, X), [_, _ | _]),
  not(month_has_deciding_day(Month)).

s2(Month, Day):-
	date(Month, Day),
	findall(X, s1(X, Day), [Month]).

s3(Month, Day):-
  date(Month, Day),
  findall(X, s2(Month, X), [Day]).
