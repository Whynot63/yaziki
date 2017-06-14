domains
  name = string
  id = integer
  neighbors = integer*
  way = id*

database
  stantions(name, id, neighbors)

predicates
  WAY(name, name, way)

  step(name, name, way, neighbors)

  in(id, way)
  reverse(way, way, way)
  print(way)

clauses
% Metro graph description
  stantions("TSARITSINO", 101, [102]).
  stantions("OREKHOVO", 102, [101, 103]).
  stantions("DOMODEDOVSKAYA", 103, [102, 104]).
  stantions("KRASNOGVARDEYSKAYA", 104, [103, 105, 204]).
  stantions("ALMA-ATINSKAYA", 105, [104]).

  stantions("MARINO", 201, [202]).
  stantions("BORISOVO", 202, [201, 203]).
  stantions("SHIPILOVSKAYA", 203, [202, 204]).
  stantions("ZYABLIKOVO", 204, [203, 104]).


% Help functions
  in(E, [E|T]):- !.
  in(E, [H|T]):- in(E, T).

  reverse([], Z, Z).
  reverse([H|T], Z, Acc):- reverse(T, Z, [H|Acc]).

  print([H|[]]):- stantions(N, H, _), write(N), nl.
  print([H|T]):- stantions(N, H, _), write(N), nl, print(T).

% Way search
  step(S, E, W, []).
  step(S, E, W, [H|T]):- in(H, W), step(S, E, W, T).
  step(S, E, W, [H|T]):- stantions(N, H, _), WAY(N, E, W),  step(S, E, W, T).

  WAY(E, E, W):- stantions(E, I, _), reverse([I|W], R, []), print(R), !.
  WAY(S, E, W):- stantions(S, I, N), step(S, E, [I|W], N).

goal
  W = [],
  WAY("TSARITSINO", "MARINO", W).
