"Filed out from Dolphin Smalltalk"!

Object subclass: #Plataforma
	instanceVariableNames: 'nombre empresa lanzamiento capacidad susPrincipal conjCont'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

Plataforma guid: (GUID fromString: '{d6c0afc7-84b1-4706-94bf-508a35067be0}')!

Plataforma comment: ''!

!Plataforma categoriesForClass!Kernel-Objects! !

!Plataforma methodsFor!

agregarContenido:unCont
"Agrega un contenido a la instancia de la clase Plataforma"
conjCont add:unCont.!

eliminarContenido:unCont
"Elimina un contenido de la clase Plataforma"
conjCont remove:unCont ifAbsent:[^nil].!

esVacio
"Retorna true si la clase Plataforma esta vacia"
^conjCont isEmpty.!

existe:unCont
"Retorna true si un contenido esta dentro de la clase Plataforma"
^conjCont includes: unCont.!

iniciarPlataforma:nom empre:unEmpre lanz:unAnioLanz capac:unCapac susPrinc:unSusPrinc 
"Inicializa la Plataforma con sus datos"
nombre:=nom.
empresa:=unEmpre.
lanzamiento:=unAnioLanz.
capacidad:=unCapac.
susPrincipal:=unSusPrinc.
conjCont:= OrderedCollection new.!

modCapacidad:otroCapac
"Modifica la capacidad de almacenamiento en GB de la Plataforma"
capacidad:=otroCapac.!

modEmpresa:otroEmpre
"Modifica la empresa propietaria de la Plataforma"
empresa:=otroEmpre.!

modLanzamiento:otroLanz
"Modifica el anio de lanzamiento de la Plataforma"
lanzamiento:=otroLanz.!

modNombre:otroNom
"Modifica el nombre de Plataforma"
nombre:=otroNom.!

modSuscripcion:otroSusPrinc
"Modifica el tipo de suscripcion principal de la Plataforma"
susPrincipal:=otroSusPrinc.!

recuperar:i
"Retorna el Contenido en la posición i"
^conjCont at:i.!

tamanio
"Retorna el tamanio de conCont"
^conjCont size.!

verCapacidad
"Retorna la capacidad en GB de la Plataforma"
^capacidad!

verEmpresa
"Retorna la empresa propietaria de la Plataforma"
^empresa!

verLanzamiento
^lanzamiento!

verNombre
"Retorna el nombre de la Plataforma"
^nombre!

verSuscripcion
"Retorna el tipo de suscripcion principal de la Plataforma"
^susPrincipal!

verTodos
^conjCont! !

!Plataforma categoriesForMethods!
agregarContenido:!public! !
eliminarContenido:!public! !
esVacio!public! !
existe:!public! !
iniciarPlataforma:empre:lanz:capac:susPrinc:!public! !
modCapacidad:!public! !
modEmpresa:!public! !
modLanzamiento:!public! !
modNombre:!public! !
modSuscripcion:!public! !
recuperar:!public! !
tamanio!public! !
verCapacidad!public! !
verEmpresa!public! !
verLanzamiento!public! !
verNombre!public! !
verSuscripcion!public! !
verTodos!public! !
!

!Plataforma class methodsFor!

crearPlataforma:nom con:unEmpre con:unAnioLanz con:unCapac con:unSusPrinc
	"Crea una instancia de la clase Plataforma y la inicializa con sus datos"
	^super new iniciarPlataforma:nom empre:unEmpre lanz:unAnioLanz capac:unCapac susPrinc:unSusPrinc.! !

!Plataforma class categoriesForMethods!
crearPlataforma:con:con:con:con:!public! !
!

