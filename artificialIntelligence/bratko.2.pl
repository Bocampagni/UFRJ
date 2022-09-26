oddLength([_|[]]).
oddLength([_|T]):-
    oddLength(T).



evenLength([_|[_|[]]]).
evenLength([_|T):-
	evenLength(T).


reverse(List, Rev) :-
        reverse(List, Rev, []).
reverse([], L, L).
reverse([H|T], L, SoFar) :-
        reverse(T, L, [H|SoFar]).


palindrome2(X,X).
palindrome2(List):-
    reverse(List,ReversedList),
    palindrome2(List,ReversedList).


shift([H|T],List2):-
    reverse(T,L3),
	shift(L3,List2,[H]).

shift([],L,L).


shift([H|T],List2,List3):-
    shift(T,List2,[H|List3]).