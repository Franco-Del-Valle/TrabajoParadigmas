|acciones rtaMenu plat nomPlat empre anioLanz capac susPrinc conjCont cont cod tit gen anioEstre tam calif prom dispo durac anioCine tempor emision opcion |

Transcript clear.

nomPlat:= Prompter prompt: 'Ingrese el nombre de la plataforna'.
empre:= Prompter prompt: 'Ingrese la empresa propietaria de la plataforma'.
anioLanz:= (Prompter prompt: 'Ingrese el anio de lanzamiento de la plataforma')asNumber.
capac:=(Prompter prompt: 'Ingrese la capacidad de la plataforma en GB')asNumber.
susPrinc:= Prompter prompt: 'Ingrese el tipo de suscripcion principal de la plataforma'.
plat:= Plataforma crear: nomPlat con: empre con: anioLanz con: capac con: susPrinc.

rtaMenu:=true.
acciones:=Dictionary new.


acciones at: 1 put:[
	Transcript show: '---Iniciando carga de contenido---';cr.
	tam:= (Prompter prompt: 'Ingrese el tamanio del contenido a ingresar')asNumber.
	(tam <= capac )ifTrue: [
		Transcript show: 'El contenido puede ser cargado a la plataforma ', plat verNombre;cr.
		cod:=(Prompter prompt: 'Ingrese el codigo de identificacion del contenido' )asNumber.
		tit:=Prompter prompt: 'Ingrese el titulo del contenido'.
		gen:=Prompter prompt: 'Ingrese el genero del contenido'.
		anioEstre:=(Prompter prompt: 'Ingrese el anio de estreno del contenido' )asNumber.
		calif:=(Prompter prompt: 'Ingrese la calificacion del contenido (1.0 a 10.0)' )asNumber.
		prom:=(Prompter prompt: 'Ingrese la calificacion promedio del contenido (1.0 a 10.0)' )asNumber.
		dispo:=(MessageBox confirm: '¿El contenido esta disponible para reproduccion?' ). "Duda"
		(MessageBox confirm: '¿El contenido a cargar es una pelicula?' )ifTrue: [
			durac:=(Prompter prompt: 'Ingrese la duracion de la pelicula en minutos' )asNumber.
			anioCine:=(Prompter prompt: 'Ingrese el anio de estreno en cine de la pelicula' )asNumber.
			cont:= Pelicula crear: cod con: tit con: gen con: anioEstre con: tam con: calif con: prom con: dispo con: durac con: anioCine.
			plat agregarContenido: cont.
			capac:= capac - tam.
		]ifFalse:[
			tempor:=(Prompter prompt: 'Ingrese la cantidad de temporadas de la serie' )asNumber.
			emision:=(MessageBox confirm: '¿La serie sigue en emision?' ).
			cont:= Serie crear: cod con: tit con: gen con: anioEstre con: tam con: calif con: prom con: dispo con: tempor con: emision.
			plat agregarContenido: cont.
			capac:= capac - tam.
		].
		Transcript show: 'El almacenamiento restante de la plataforma ',plat verNombre,' es ', (capac)printString,' GB';cr.
	]ifFalse:[
		Transcript
			show: 'El contenido no puede ser cargado a la plataforma por falta de capacidad de almacenamiento';cr;
			show: 'Se recomienda ampliar el almacenamiento de la plataforma o borrar un contenido';cr.
	].
].

acciones at: 2 put:[
	Transcript show: '---Buscando contenido por codigo---';cr.
	
].

acciones at: 3 put:[
	Transcript show: '---Modificando contenido por codigo---';cr.
].

acciones at: 4 put:[
	Transcript show: '---Eliminando contenido por codigo---';cr.
].

acciones at: 5 put:[
	Transcript show: '---Mostrando coleccion de maratoneables---';cr.
].

acciones at: 6 put:[
	Transcript show: '---Mostrando tamaño promedio de contenidos y excedentes---';cr.
].

acciones at: 7 put:[
	Transcript show: '---Mostrando contenido con mayor calificacion---';cr.
].

acciones at: 8 put:[
	Transcript show: '---Eliminando contenidos no disponibles---';cr.
].

acciones at: 9 put:[
	Transcript show: '---Generando diccionario de contenidos por genero---';cr.
].

acciones at: 0 put:[
	Transcript show: '---Saliendo del menu---';cr.
	rtaMenu:=false.
].

[ rtaMenu ]whileTrue: [
	Transcript
		show: '---Sistema de gestion de plataforma---';cr;
		show: '1-Cargar contenido';cr;
		show:  '2-Buscar contenido por codigo';cr;
		show:  '3-Modificar contenido por codigo';cr;
		show:  '4-Eliminar contenido por codigo';cr;
		show:  '5-Mostrar coleccion de maratoneables';cr;
		show:  '6-Mostrar tamaño promedio de contenidos y los excedentes';cr;
		show:  '7-Mostrar contenido con mayor calificacion';cr;
		show:  '8-Eliminar contenidos no disponibles';cr;
		show:  '9-Generar diccionario de contenidos por genero con su cantidad';cr;
		show:  '0-Salir del menu';cr.
	opcion:=(Prompter prompt: 'Seleccione una de las opciones (0 a 9)' )asNumber.
	(acciones at: opcion ifAbsent:[Transcript show: 'Opcion invalida';cr. ])value.
	(rtaMenu)ifTrue: [
		rtaMenu:=(MessageBox confirm: '¿Desea volver al menu?' ).
	].
].
Transcript show: 'Programa finalizado';cr.