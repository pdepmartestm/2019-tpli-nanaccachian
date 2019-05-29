% TP FAMILIA COMIENZO

progenitor(alberto,nicolas).
progenitor(myriam,nicolas).
progenitor(alberto,candela).
progenitor(myriam,candela).
progenitor(dicran,alberto).
progenitor(dicran,gloria).
progenitor(rosa,alberto).
progenitor(rosa,gloria).
progenitor(enrique,marcelo).
progenitor(aurora,marcelo).
progenitor(juan,solange).
progenitor(juan,natalia).
progenitor(stella,solange).
progenitor(stella,natalia).
progenitor(alicia,karina).
progenitor(alicia,ariel).
progenitor(armando,karina).
progenitor(armando,ariel).
progenitor(alicia,karina).
progenitor(alicia,ariel).
progenitor(ohannes,rosa).
progenitor(ohannes,enrique).
progenitor(ohannes,vresh).
progenitor(narin,rosa).
progenitor(narin,enrique).
progenitor(narin,vresh).
progenitor(vresh,juan).
progenitor(vresh,alicia).
progenitor(diruhi,juan).
progenitor(diruhi,alicia).
progenitor(karina,santino).
progenitor(karina,ticiano).
progenitor(rafael,santino).
progenitor(rafael,ticiano).
progenitor(ariel,anush).
progenitor(paola,anush).
progenitor(solange,julia).
progenitor(federico,julia).

hermanos(Herm1,Herm2) :-
    progenitor(Padre,Herm1),
    progenitor(Padre,Herm2),
    Herm1\=Herm2.

abuelo(Abuelo,Nieto) :-
    progenitor(Abuelo,Padre),
    progenitor(Padre,Nieto).

tio(Tio,Sobrino) :- 
    hermanos(Tio,Padre),
    progenitor(Padre,Sobrino).

tioSegundo(Tio,Sobrino) :- 
    primos(Tio,Padre),
    progenitor(Padre,Sobrino).

tioAbuelo(TioAbuelo,Sobrino) :-
    abuelo(Abuelo,Sobrino),
    hermanos(Abuelo,TioAbuelo).

bisabuelo(Bisabuelo,Bisnieto) :-
    progenitor(Bisabuelo,Abuelo),
    abuelo(Abuelo,Bisnieto).

pareja(Novio,Novia) :-
    progenitor(Novio,Hijo),
    progenitor(Novia,Hijo).

suegros(Suegro,Casado) :-
    pareja(Casado,Casada),
    progenitor(Suegro,Casada).

cuniados(Cuniado,Casado) :-
    pareja(Casado,Casada),
    hermanos(Cuniado,Casada).

primos(Primo1,Primo2) :-
    hermanos(Padre1,Padre2),
    progenitor(Padre1,Primo1),
    progenitor(Padre2,Primo2),
    Primo1\=Primo2.

primosSegundos(Primo1,Primo2) :-
    primos(Padre1,Padre2),
    progenitor(Padre1,Primo1),
    progenitor(Padre2,Primo2),
    Primo1\=Primo2.

descendientes(Descendiente,Persona) :- 
    progenitor(Descendiente,Persona).
descendientes(Descendiente,Persona) :-
    progenitor(Padre,Persona),
    descendientes(Descendiente,Padre).
