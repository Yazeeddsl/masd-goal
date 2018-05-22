:- dynamic  on/2, holding/1, maintain/0.

% Assume there is enough room to put all blocks on the table.
% This is actually only true for up to 13 blocks in the Tower Environment.
clear(table).
clear(X) :- block(X), not( on(Y, X) ), not( holding(X) ).


above(X, Y) :- on(X, Y).
above(X, Y) :- on(X, Z), above(Z, Y).

tower([X]) :- on(X, table).
tower([X, Y| T]) :- on(X, Y), tower([Y| T]).

% anything that occurs as an 'on' is a block except the table.
block(X) :- on(X,_),  not(X==table) .
block(X) :- on(_,X),  not(X==table) .
