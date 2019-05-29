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
