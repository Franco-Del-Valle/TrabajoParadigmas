"Filed out from Dolphin Smalltalk"!

Contenido subclass: #Pelicula
	instanceVariableNames: 'duracionMinutos estrenadaCine'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

Pelicula guid: (GUID fromString: '{9e4e1eb8-8d65-4a0b-8073-ede54e632246}')!

Pelicula comment: ''!

!Pelicula categoriesForClass!Kernel-Objects! !

!Pelicula methodsFor!

iniciarPelicula:cod tit:unTit gen:unGen anio:unAnio tam:unTam cal:unCal prom:unProm dispo:unDispo durac:unDurac estre:unEstreno
"Inicializa una pelicula con sus datos"
super iniciarContenido: cod tit: unTit gen: unGen anio: unAnio tam: unTam cal: unCal prom: unProm dispo: unDispo.
duracionMinutos:=unDurac.
estrenadaCine:=unEstreno.
!

modDuracion:otraDurac
"Modifica la duracion en minutos de la Pelicula"
duracionMinutos:=otraDurac.!

modEstrenado:otroEstreno
"Modofica el estado de estrenada en cine de la Pelicula"
estrenadaCine:=otroEstreno.!

verDuracion
"Retorna la duracion en minutos de la Pelicula"
^duracionMinutos!

verEstreno
"Retorna el estado de estrenada en cine de la Pelicula"
^estrenadaCine! !

!Pelicula categoriesForMethods!
iniciarPelicula:tit:gen:anio:tam:cal:prom:dispo:durac:estre:!public! !
modDuracion:!public! !
modEstrenado:!public! !
verDuracion!public! !
verEstreno!public! !
!

!Pelicula class methodsFor!

crearPelicula:cod con:unTit con:unGen con:unAnio con:unTam con:unCal con:unProm con:unDispo con:unDurac con:unEstreno
	"Crea una instancia de la clase Remedio y la inicializa con sus datos"
	^super new iniciarPelicula:cod tit:unTit gen:unGen anio:unAnio tam:unTam cal:unCal prom:unProm dispo:unDispo durac:unDurac estre:unEstreno! !

!Pelicula class categoriesForMethods!
crearPelicula:con:con:con:con:con:con:con:con:con:!public! !
!

