padrede('Judy','Isabel').
padrede('Judy','Jose M').
padrede('Victor','Jose M').
padrede('Victor','Isabel').
padrede('Johana','Karol').
padrede('Johana','Manuel').
padrede('Miguel','Karol').
padrede('Miguel','Manuel').
padrede('Norman','Karen').
padrede('Norman','Monica').
padrede('Tahiz','Karen').
padrede('Tahiz','Monica').
padrede('Alex','Gabriel').
padrede('Ana','Gabriel').
padrede('Blanca','Victor').
padrede('Blanca','Alex').
padrede('Blanca','Tahiz').
padrede('Blanca','Miguel').
padrede('Blanca','Jhon').
padrede('Jose','Victor').
padrede('Jose','Alex').
padrede('Jose','Tahiz').
padrede('Jose','Miguel').
padrede('Jose','Jhon').
padrede('Carmelina','Judy').
padrede('Carmelina','Daniel').
padrede('Juan','Judy').
padrede('Juan','Judy').
padrede('Silvino','Juan').
padrede('Filomena','Juan').
padrede('Rosa','Carmelina').
padrede('Rosa','Cecilia').
padrede('Rosa','Cruz').
padrede('Daniel C','Carmelina').
padrede('Daniel C','Cecilia').
padrede('Daniel C','Cruz').
padrede('Abigail','Blanca').
padrede('Abigail','Solandy').
padrede('Arcangel','Blanca').
padrede('Arcangel','Solandy').
padrede('Cecilia','Victoria').
padrede('Cruz','Shirley').
pardede('Solandy','Milena').
padrede('Solandy','Liliana').
padrede('Solandy','Monica S').
padrede('Monica S','Thomas').

hijode(A,B):-padrede(B,A).
hermanode(A,B):-padrede(C,A),padrede(C,B),A\==B.  
tiode(A,B):-padrede(C,B),hermanode(C,A).
tiosegundode(A,B):-abuelode(C,B),hermanode(C,A).
sobrinode(A,B):-tiode(B,A).
abuelode(A,B):-padrede(A,C),padrede(C,B).
nietode(A,B):-abuelode(B,A).
primode(A,B):-padrede(C,A),padrede(D,B),hermanode(C,D).

primosegundode(A,B):-(primode(A,C),hijode(B,C)).

bisabuelode(A,B):-padrede(A,C),abuelode(C,B).
bisnietode(A,B):-bisabuelode(B,A).
casados(A,B):-padrede(A,C),padrede(B,C),A\==B.
suegrode(A,B):-padrede(A,C),casados(C,B).
yernode(A,B):-suegrode(B,A).
cunadode(A,B):-casados(A,C),hermanode(C,B).
esfeliz(A):- not(casados(A,X)).













