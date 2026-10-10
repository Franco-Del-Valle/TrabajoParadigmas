"Filed out from Dolphin Smalltalk"!

Object subclass: #Contenido
	instanceVariableNames: 'codigo titulo genero anioEstreno tamanio calificacion promedio disponible'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

Contenido guid: (GUID fromString: '{b576d467-7465-4c5e-a835-8beee65d25b0}')!

Contenido comment: ''!

!Contenido categoriesForClass!Kernel-Objects! !

!Contenido methodsFor!

iniciarContenido:cod tit:unTit gen:unGen anio:unAnio tam:unTam cal:unCal prom:unProm dispo:unDispo
"Inicializa el Contenido con sus datos"
codigo:=cod.
titulo:=unTit.
genero:=unGen.
anioEstreno:=unAnio.
tamanio:=unTam.
calificacion:=unCal.
promedio:=unProm.
disponible:=unDispo.
!

modAnio:otroAnio
"Modifica el anio de estreno del contenido"
anioEstreno:=otroAnio.!

modCalificacion:otraCal
"Modifica la calificacion del contenido"
calificacion:=otraCal.!

modCodigo:otroCod
"Modifica el codigo del contenido"
codigo:=otroCod .!

modDisponibilidad:otraDispo
"Modifica el estado de disponibilidad de reproduccion para el contenido"
disponible:=otraDispo.!

modGenero:otroGen
"Modifica el genero del Contenido"
genero:=otroGen.!

modPromedio:otroProm
"Modifica la calificacion promedio del contenido"
promedio:=otroProm.!

modTamanio:otroTam
"Modifica el tamanio del contenido"
tamanio:=otroTam.!

modTitulo:otroTit
"Modifica el titulo del contenido"
titulo:=otroTit.!

verAnio
"Retorna el anio de estreno"
^anioEstreno!

verCalificacion
"Retorna la calificacion del contenido"
^calificacion!

verCodigo
"Retorna el codigo de identificacion del contenido"
^codigo!

verDisponibilidad
"Retorna si esta disponible para reproduccion el contenido"
^disponible!

verGenero
"Retorna el genero del contenido"
^genero!

verPromedio
"Retorna la calificacion promedio del contenido"
^promedio!

verTamanio
"Retorna el tamanio ocupado por el contenido"
^tamanio!

verTitulo
"Retorna el titulo del contenido"
^titulo! !

!Contenido categoriesForMethods!
iniciarContenido:tit:gen:anio:tam:cal:prom:dispo:!public! !
modAnio:!public! !
modCalificacion:!public! !
modCodigo:!public! !
modDisponibilidad:!public! !
modGenero:!public! !
modPromedio:!public! !
modTamanio:!public! !
modTitulo:!public! !
verAnio!public! !
verCalificacion!public! !
verCodigo!public! !
verDisponibilidad!public! !
verGenero!public! !
verPromedio!public! !
verTamanio!public! !
verTitulo!public! !
!

!Contenido class methodsFor!

crearContenido:cod con:unTit con:unGen con:unAnio con:unTam con:unCal con:unProm con:unDispo
	"Crea una instancia de la clase Contenido y la inicializa con sus datos"
	^super new iniciarContenido:cod tit:unTit gen:unGen anio:unAnio tam:unTam cal:unCal prom:unProm dispo:unDispo! !

!Contenido class categoriesForMethods!
crearContenido:con:con:con:con:con:con:con:!public! !
!

