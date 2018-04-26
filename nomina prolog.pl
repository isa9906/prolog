persona(nombre('Alejandro'),categoria(3),tipoContrato('MT')).


salariobase(X,Y,Z,B):-persona(nombre(X),categoria(Y),tipoContrato(Z)),
				(((Y==3),B is 781442*3)
				;((Y==2),B is 781442*2)
				;((Y==2),B is 781442)).

tipocontrato(X,Y,Z,S):-persona(nombre(X),categoria(Y),tipoContrato(Z)),salariobase(X,Y,Z,B),
				(((Z=='TC'),S is B)
				;((Z=='MT'), S is B/2)
				;((Z==2),S is B)).

%nomina(X,Y,Z,A):-persona(nombre(X),categoria(Y),tipoContrato)
				
				
				



%salariobase(X,Y):-(X=='uno', Y=salariominimo);(X=='dos', Y=salariominimo*2);(X=='tres', Y=salariominimo*3).
%descuentosalud(X,Y):-(X=salariobase())