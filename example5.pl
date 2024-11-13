% Parent-child relationships
parent(tomir, jewel).
parent(tomir, sohel).
parent(anjuman, jewel).
parent(anjuman, sohel).
parent(jewel, khan).
parent(sharjena, khan).
parent(sohel, emu).
parent(shompa, emu).
parent(boshir, sharjena).
parent(helen, sharjena).
parent(salim, shompa).
parent(sarah, shompa).

% Marriages
married(tomir, anjuman).
married(jewel, sharjena).
married(sohel, shompa).

% Rules
is_parent(X, Y) :- parent(X, Y).

% Rule to check if X and Y are siblings
are_siblings(X, Y) :-
    parent(P, X),
    parent(P, Y),
    X \= Y.

% Rule to check if X is the grandparent of Y
is_grandparent(X, Y) :-
    parent(X, Z),
    parent(Z, Y).

% Rule to check if X and Y are spouses
is_spouse(X, Y) :- married(X, Y).
is_spouse(X, Y) :- married(Y, X).

% Rule to check if X is an ancestor of Y
is_ancestor(X, Y) :- parent(X, Y).
is_ancestor(X, Y) :-
    parent(X, Z),

    is_ancestor(Z, Y).

