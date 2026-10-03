"Filed out from Dolphin Smalltalk"!

Contenido subclass: #Serie
	instanceVariableNames: 'temporadas estado'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

Serie guid: (GUID fromString: '{033ae554-91bb-47e5-a060-773334d4bcbe}')!

Serie comment: ''!

!Serie categoriesForClass!Kernel-Objects! !

!Serie methodsFor!

esPelicula
^false!

esSerie
^true!

iniciar:cod tit:unTit gen:unGen anio:unAnio tam:unTam cal:unCal prom:unProm dispo:unDispo tempo:unTempor estado:unEstado
"Inicializa una serie con sus datos"
codigo:=cod.
titulo:=unTit.
genero:=unGen.
anioEstreno:=unAnio.
tamanio:=unTam.
calificacion:=unCal.
promedio:=unProm.
disponible:=unDispo.
temporadas :=unTempor.
estado :=unEstado.!

modEstado:otroEstado
"Modifica el estado de emision de la Serie"
estado:=otroEstado.!

modTemporadas:otroTempor
"Modifica la cantidad de temporadas de la Serie"
temporadas:=otroTempor.!

verEstado
"Retorna el estado de emision de la Serie"
^estado!

verTemporadas
"Retorna la cantidad de temporadas de la Serie"
^temporadas! !

!Serie categoriesForMethods!
esPelicula!public! !
esSerie!public! !
iniciar:tit:gen:anio:tam:cal:prom:dispo:tempo:estado:!public! !
modEstado:!public! !
modTemporadas:!public! !
verEstado!public! !
verTemporadas!public! !
!

!Serie class methodsFor!

crear:cod con:unTit con:unGen con:unAnio con:unTam con:unCal con:unProm con:unDispo con:unTempor con:unEstado
	"Crea una instancia de la clase Remedio y la inicializa con sus datos"
	^self new iniciar:cod tit:unTit gen:unGen anio:unAnio tam:unTam cal:unCal prom:unProm dispo:unDispo tempo:unTempor estado:unEstado! !

!Serie class categoriesForMethods!
crear:con:con:con:con:con:con:con:con:con:!public! !
!

