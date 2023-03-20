lakilaki(david).
lakilaki(jack).
lakilaki(john).
lakilaki(ray).
lakilaki(peter).

perempuan(amy).
perempuan(karen).
perempuan(liza).
perempuan(susan).
perempuan(mary).

pasangan(david, amy).
pasangan(jack, karen).
pasangan(john, susan).

saudara(liza, john).
saudara(susan, ray).
saudara(peter, mary).

kakek(david, jack).
nenek(amy, karen).
anakLakilaki(john, ray).
anakPerempuan(liza, susan).
cucu(peter, mary).

is_lakilaki(X) :- lakilaki(X).
is_perempuan(Y) :- perempuan(Y).
is_pasangan(X,Y) :- pasangan(X,Y).
is_anakLakilaki(X,Y) :- anakLakilaki(X,Y).
is_anakPerempuan(X,Y) :- anakPerempuan(X,Y).
is_saudara(X,Y) :- saudara(X,Y).
is_kakek(X1,X2) :- kakek(X2,X1).
is_nenek(Y2,Y1) :- nenek(Y1,Y2).
not(sah(menikah(X,Y))) :- is_saudara(X,Y).
sah(menikah(X,Y)) :- is_pasangan(X,Y).
