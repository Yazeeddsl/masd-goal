table(Number) :- between(1, 9, Number).

free(Number) :- table(Number, empty).

occupy(Number) :- table(Number).

occupied(Number) :- not free(Number).