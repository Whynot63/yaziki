domains
  list = integer*

predicates
  NTHCDR(integer, list, list)
  NTH(integer, list, integer)

clauses
  NTHCDR(0, L, R):- R=L.
  NTHCDR(N, [], R):- R=[].
  NTHCDR(N, [H|T], R):- N1=N-1, NTHCDR(N1, T, R).

  NTH(0, [H|_], R):- R=H.
  NTH(N, [], R):- R=-1.
  NTH(N, [H|T], R):- N1=N-1, NTH(N1, T, R).

goal
  NTHCDR(0, [1, 2, 3], L1),
  write(L1),nl,
  NTHCDR(2, [1, 2, 3, 4], L2),
  write(L2),nl,

  NTH(0, [1, 2], E1),
  write(E1),nl,
  NTH(3, [1, 2, 3, 4, 5, 6, 7], E2),
  write(E2),nl.
