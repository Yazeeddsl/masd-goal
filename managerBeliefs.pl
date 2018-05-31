tableForTwoTaken(Count) :- tableFor(Y), Y == 2.
tableForOneTaken(Count) :- tableFor(X), X == 1.
tableForFourTaken(Count) :- tableFor(Z), Z == 4; Z == 3.
remainingTablesForOne(CountOnes).
remainingTablesForTwo(CountTwos).
remainingTablesForFour(CountFours).

needHowManySeats(Text).