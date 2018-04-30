






persona(nombre('Alejandro'),categoria(3),tipoContrato('MT')).
persona(nombre('Maria'),categoria(3),tipoContrato('H'),horas(18)).

salariobase(X,Y,Z,B):-persona(nombre(X),categoria(Y),tipoContrato(Z)),
				(((Y==3),B is 781442*3)
				;((Y==2),B is 781442*2)
				;((Y==1),B is 781442)).
salariobase(X,Y,Z,H,B):-persona(nombre(X),categoria(Y),tipoContrato(Z),horas(H)),
				(((Y==3),B is 781442*3)
				;((Y==2),B is 781442*2)
				;((Y==1),B is 781442)).


tipocontrato(X,Y,Z,S):-persona(nombre(X),categoria(Y),tipoContrato(Z)),salariobase(X,Y,Z,B),
				(((Z=='TC'),S is B)
				;((Z=='MT'), S is B/2)
				;((Z==2),S is B)).
tipocontrato(X,Y,Z,H,S):-persona(nombre(X),categoria(Y),tipoContrato(Z),horas(H)),salariobase(X,Y,Z,H,B),
				((Z=='H'),S is H*(781442/40)).


