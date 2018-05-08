






persona(nombre('Alejandro'),categoria(3),tipoContrato('MT')).
persona(nombre('Isabel'),categoria(2),tipoContrato('TC')).
persona(nombre('Andres'),categoria(2),tipoContrato('H'),horas(15)).
persona(nombre('Maria'),categoria(3),tipoContrato('H'),horas(10)).



salariobase(X,Y,Z,B):-persona(nombre(X),categoria(Y),tipoContrato(Z)),
				(((Y==3),B is 781442*3)
				;((Y==2),B is 781442*2)
				;((Y==1),B is 781442)).
salariobase(X,Y,Z,H,B):-persona(nombre(X),categoria(Y),tipoContrato(Z),horas(H)),
				(((Y==3),B is 781442*3)
				;((Y==2),B is 781442*2)
				;((Y==1),B is 781442)).


contrato(X,Y,Z,S):-persona(nombre(X),categoria(Y),tipoContrato(Z)),salariobase(X,Y,Z,B),
				(((Z=='TC'),S is B)
				;((Z=='MT'), S is B/2)
				;((Z==2),S is B)).
contrato(X,Y,Z,H,S):-persona(nombre(X),categoria(Y),tipoContrato(Z),horas(H)),salariobase(X,Y,Z,H,B),
				((Z=='H'),salariobase(X,Y,Z,H,B),S is H*(B/40)).



descuento(X,B,D):- D is B*(X/100). 

salariototal(X,Y,Z,T):-contrato(X,Y,Z,S),descuento(12,S,D),descuento(12,S,A),T is S-(D+A).
salariototal(X,Y,Z,H,T):-contrato(X,Y,Z,H,S),descuento(12,S,D),descuento(12,S,A),T is S-(D+A).
aplicardescuento(X,Y,Z,R,J):-salariototal(X,Y,Z,T),descuento(R,T,A),J is T-A.
aplicardescuento(X,Y,Z,H,R,J):-salariototal(X,Y,Z,H,T),descuento(R,T,A),J is T-A.

