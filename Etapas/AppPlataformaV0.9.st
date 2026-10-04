|acciones dicGenero colGen sinRep rtaMenu i plat nomPlat empre anioLanz capac susPrinc conjCont cont cod tit gen anioEstre tam calif prom dispo durac cine tempor emision opcion col colMaraton tamTot tamProm contMay|

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
		cod:=(Prompter prompt: 'Ingrese el codigo de identificacion del contenido' )asNumber. "Calidad: agregar si ya existe"
		tit:=Prompter prompt: 'Ingrese el titulo del contenido'.
		gen:=Prompter prompt: 'Ingrese el genero del contenido'.
		anioEstre:=(Prompter prompt: 'Ingrese el anio de estreno del contenido' )asNumber.
		calif:=(Prompter prompt: 'Ingrese la calificacion del contenido (1.0 a 10.0)' )asNumber.
		prom:=(Prompter prompt: 'Ingrese la calificacion promedio del contenido (1.0 a 10.0)' )asNumber.
		dispo:=(MessageBox confirm: '¿El contenido esta disponible para reproduccion?' ).
		(MessageBox confirm: '¿El contenido a cargar es una pelicula?' )ifTrue: [
			durac:=(Prompter prompt: 'Ingrese la duracion de la pelicula en minutos' )asNumber.
			cine:=(MessageBox confirm: '¿La pelicula fue estrenada en cine?' ).
			cont:= Pelicula crear: cod con: tit con: gen con: anioEstre con: tam con: calif con: prom con: dispo con: durac con: cine.
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
	cod:=(Prompter prompt: 'Ingrese el codigo del contenido a buscar')asNumber.
	1 to: plat tamanio do:[:i | 
		cont:= plat recuperar: i.
		((cont verCodigo) = cod)ifTrue: [
			Transcript 
				show: 'Contenido de codigo ', (cod )printString,' encontrado';cr;
				show: 'Titulo: ', cont verTitulo;cr;
				show: 'Genero: ',cont verGenero;cr;
				show: 'Anio de estreno: ', (cont verAnio )printString;cr;
				show: 'Tamanio ocupado: ', (cont verTamanio )printString,' GB';cr;
				show: 'Calificacion: ', (cont verCalificacion )printString;cr;
				show: 'Calificacion promedio: ', (cont verPromedio )printString;cr.
			(cont verDisponibilidad )ifTrue: [
				Transcript show: 'Disponible para reproduccion: Si';cr.
			]ifFalse: [
				Transcript show: 'Disponible para reproduccion: No';cr.
			].
			(cont esPelicula )ifTrue: [
				Transcript show: 'Duracion: ', (cont verDuracion )printString, ' minutos';cr.
				(cont verEstreno )ifTrue: [
					Transcript show: 'Estrenada en cine: Si';cr.
				]ifFalse: [
					Transcript show: 'Estrenada en cine: No';cr.
				].
			]ifFalse: [
				Transcript show: 'Cantidad de temporadas: ', (cont verTemporadas )printString;cr.
				(cont verEstado )ifTrue: [
					Transcript show: 'Estado: En emision';cr.
				]ifFalse: [
					Transcript show: 'Estado: Finalizado';cr.
				].
			].
		].
	].
	
].

acciones at: 3 put:[
	Transcript show: '---Modificando contenido por codigo---';cr.
	cod:=(Prompter prompt: 'Ingrese el codigo del contenido a buscar')asNumber.
	1 to: plat tamanio do:[:i | 
		cont:= plat recuperar: i.
		((cont verCodigo) = cod)ifTrue: [
			Transcript 
				show: 'Contenido de codigo ', (cod )printString,' a modificar';cr;
				show: 'Titulo: ', cont verTitulo;cr;
				show: 'Genero: ',cont verGenero;cr;
				show: 'Anio de estreno: ', (cont verAnio )printString;cr;
				show: 'Tamanio ocupado: ', (cont verTamanio )printString,' GB';cr;
				show: 'Calificacion: ', (cont verCalificacion )printString;cr;
				show: 'Calificacion promedio: ', (cont verPromedio )printString;cr.
			(cont verDisponibilidad )ifTrue: [
				Transcript show: 'Disponible para reproduccion: Si';cr.
			]ifFalse: [
				Transcript show: 'Disponible para reproduccion: No';cr.
			].
			(cont esPelicula )ifTrue: [
				Transcript show: 'Duracion: ', (cont verDuracion )printString, ' minutos';cr.
				(cont verEstreno )ifTrue: [
					Transcript show: 'Estrenada en cine: Si';cr.
				]ifFalse: [
					Transcript show: 'Estrenada en cine: No';cr.
				].
			]ifFalse: [
				Transcript show: 'Cantidad de temporadas: ', (cont verTemporadas )printString;cr.
				(cont verEstado )ifTrue: [
					Transcript show: 'Estado: En emision';cr.
				]ifFalse: [
					Transcript show: 'Estado: Finalizado';cr.
				].
			].
			tam:=(Prompter prompt: 'Ingrese el nuevo tamanio del contenido' )asNumber.
			((capac + (cont verTamanio) - tam) > 0 )ifTrue: [
				(capac + (cont verTamanio) - tam).
				cont modTamanio: tam.
				cod:=(Prompter prompt: 'Ingrese el nuevo codigo de identificacion del contenido' )asNumber. "Calidad: agregar verificar si ya existe"
				cont modCodigo: cod.
				tit:=Prompter prompt: 'Ingrese el nuevo titulo del contenido'.
				cont modTitulo: tit.
				gen:=Prompter prompt: 'Ingrese el nuevo genero del contenido'.
				cont modGenero: gen.
				anioEstre:=(Prompter prompt: 'Ingrese el nuevo anio de estreno del contenido' )asNumber.
				cont modAnio: anioEstre.
				calif:=(Prompter prompt: 'Ingrese la nueva calificacion del contenido (1.0 a 10.0)' )asNumber.
				cont modCalificacion: calif.
				prom:=(Prompter prompt: 'Ingrese la nueva calificacion promedio del contenido (1.0 a 10.0)' )asNumber.
				cont modPromedio: prom.
				dispo:=(MessageBox confirm: '¿El contenido esta disponible para reproduccion?' ).
				cont modDisponibilidad: dispo.
				(cont esPelicula)ifTrue: [
					durac:=(Prompter prompt: 'Ingrese la nueva duracion de la pelicula en minutos' )asNumber.
					cont modDuracion: durac.
					cine:=(MessageBox confirm: '¿La pelicula fue estrenada en cine?' ).
					cont modEstrenado: cine.
				]ifFalse:[
					tempor:=(Prompter prompt: 'Ingrese la nueva cantidad de temporadas de la serie' )asNumber.
					cont modTemporadas: tempor.
					emision:=(MessageBox confirm: '¿La serie sigue en emision?' ).
					cont modEstado: emision.
				].
			]ifFalse: [
				Transcript show: 'No es posible cambiar el tamanio del contenido a ', tam,' por falta de capacidad de la plataforma';cr.
			].
		].
	].
].

acciones at: 4 put:[
	Transcript show: '---Eliminando contenido por codigo---';cr.
	i:=1.
	cod:=(Prompter prompt: 'Ingrese el codigo del contenido a eliminar' )asNumber.
	[ i<= (plat tamanio) ]whileTrue: [
		cont:=plat recuperar: i.
		(cont verCodigo = cod)ifTrue: [
			Transcript 
				show: 'Contenido de codigo ', (cod )printString,' a eliminar';cr;
				show: 'Titulo: ', cont verTitulo;cr;
				show: 'Genero: ',cont verGenero;cr;
				show: 'Anio de estreno: ', (cont verAnio )printString;cr;
				show: 'Tamanio ocupado: ', (cont verTamanio )printString,' GB';cr;
				show: 'Calificacion: ', (cont verCalificacion )printString;cr;
				show: 'Calificacion promedio: ', (cont verPromedio )printString;cr.
			(cont verDisponibilidad )ifTrue: [
				Transcript show: 'Disponible para reproduccion: Si';cr.
			]ifFalse: [
				Transcript show: 'Disponible para reproduccion: No';cr.
			].
			(cont esPelicula )ifTrue: [
				Transcript show: 'Duracion: ', (cont verDuracion )printString, ' minutos';cr.
				(cont verEstreno )ifTrue: [
					Transcript show: 'Estrenada en cine: Si';cr.
				]ifFalse: [
					Transcript show: 'Estrenada en cine: No';cr.
				].
			]ifFalse: [
				Transcript show: 'Cantidad de temporadas: ', (cont verTemporadas )printString;cr.
				(cont verEstado )ifTrue: [
					Transcript show: 'Estado: En emision';cr.
				]ifFalse: [
					Transcript show: 'Estado: Finalizado';cr.
				].
			].
			(MessageBox confirm: '¿Desea eliminar el contenido de la plataforma?' )ifTrue: [
				plat eliminarContenido: cont.
				Transcript show: 'Contenido eliminado';cr.
			]ifFalse: [
				i:=i+1.
			].
		]ifFalse: [
			i:=i+1.
		].
	].
].

acciones at: 5 put:[
	Transcript show: '---Mostrando coleccion de maratoneables---';cr.
	col:=plat verTodos.
	colMaraton:= col select:[:cont | 
		((cont verCalificacion )>= 7) and: [
			(cont esPelicula )ifTrue: [
				((cont verDuracion ) < 120).
			]ifFalse: [
				((cont verEstado ) == false) and: [(cont verTemporadas )<=3].	
			].
		].
	].
	colMaraton do: [:cont |
		Transcript 
				show: 'Contenido de codigo ', (cont verCodigo)printString ;cr;
				show: 'Titulo: ', cont verTitulo;cr;
				show: 'Genero: ',cont verGenero;cr;
				show: 'Anio de estreno: ', (cont verAnio )printString;cr;
				show: 'Tamanio ocupado: ', (cont verTamanio )printString,' GB';cr;
				show: 'Calificacion: ', (cont verCalificacion )printString;cr;
				show: 'Calificacion promedio: ', (cont verPromedio )printString;cr.
			(cont verDisponibilidad )ifTrue: [
				Transcript show: 'Disponible para reproduccion: Si';cr.
			]ifFalse: [
				Transcript show: 'Disponible para reproduccion: No';cr.
			].
			(cont esPelicula )ifTrue: [
				Transcript show: 'Duracion: ', (cont verDuracion )printString, ' minutos';cr.
				(cont verEstreno )ifTrue: [
					Transcript show: 'Estrenada en cine: Si';cr.
				]ifFalse: [
					Transcript show: 'Estrenada en cine: No';cr.
				].
			]ifFalse: [
				Transcript 
					show: 'Cantidad de temporadas: ', (cont verTemporadas )printString;cr;
					show: 'Estado: Finalizada';cr.
			].
	].
].

acciones at: 6 put:[
	Transcript show: '---Mostrando tamaño promedio de contenidos y excedentes---';cr.
	tamTot:=0.
	1 to: (plat tamanio) do: [:i |
		cont:=plat recuperar: i.
		tamTot:= tamTot + (cont verTamanio).
	].
	tamProm:= (tamTot/(plat tamanio))asFloat.
	Transcript 
		show: 'El tamanio promedio de los contenidos es ', (tamProm)printString;cr;
		show: 'Mostrando contenidos que se pasan del tamanio promedio...';cr.
	1 to: (plat tamanio) do: [:i |
		cont:=plat recuperar: i.
		((cont verTamanio) > tamProm)ifTrue: [
			Transcript
				show: 'Contenido de codigo ', (cont verCodigo)printString ;cr;
				show: 'Titulo: ', cont verTitulo;cr;
				show: 'Genero: ',cont verGenero;cr;
				show: 'Anio de estreno: ', (cont verAnio )printString;cr;
				show: 'Tamanio ocupado: ', (cont verTamanio )printString,' GB';cr;
				show: 'Calificacion: ', (cont verCalificacion )printString;cr;
				show: 'Calificacion promedio: ', (cont verPromedio )printString;cr.
			(cont verDisponibilidad )ifTrue: [
				Transcript show: 'Disponible para reproduccion: Si';cr.
			]ifFalse: [
				Transcript show: 'Disponible para reproduccion: No';cr.
			].
			(cont esPelicula )ifTrue: [
				Transcript show: 'Duracion: ', (cont verDuracion )printString, ' minutos';cr.
				(cont verEstreno )ifTrue: [
					Transcript show: 'Estrenada en cine: Si';cr.
				]ifFalse: [
					Transcript show: 'Estrenada en cine: No';cr.
				].
			]ifFalse: [
				Transcript show: 'Cantidad de temporadas: ', (cont verTemporadas )printString;cr.
				(cont verEstado == true)ifTrue: [
					Transcript show: 'Estado: En emision';cr.
				]ifFalse: [
					Transcript show: 'Estado: Finalizada';cr.
				].	
			].
		].
	].
].

acciones at: 7 put:[
	Transcript show: '---Mostrando contenido con mayor calificacion---';cr.
	calif:=0.
	1 to: (plat tamanio) do: [:i | 
		cont:= plat recuperar: i.
		(calif < (cont verCalificacion))ifTrue: [
			contMay:= cont.
			calif:=(contMay verCalificacion).
		].
	].
	Transcript
			show: 'Contenido de codigo ', (contMay verCodigo)printString ;cr;
			show: 'Titulo: ', contMay verTitulo;cr;
			show: 'Genero: ',contMay verGenero;cr;
			show: 'Anio de estreno: ', (contMay verAnio )printString;cr;
			show: 'Tamanio ocupado: ', (contMay verTamanio )printString,' GB';cr;
			show: 'Calificacion: ', (contMay verCalificacion )printString;cr;
			show: 'Calificacion promedio: ', (contMay verPromedio )printString;cr.
	(contMay verDisponibilidad )ifTrue: [
		Transcript show: 'Disponible para reproduccion: Si';cr.
	]ifFalse: [
		Transcript show: 'Disponible para reproduccion: No';cr.
	].
	(contMay esPelicula )ifTrue: [
		Transcript show: 'Duracion: ', (contMay verDuracion )printString, ' minutos';cr.
		(contMay verEstreno )ifTrue: [
			Transcript show: 'Estrenada en cine: Si';cr.
		]ifFalse: [
			Transcript show: 'Estrenada en cine: No';cr.
		].
	]ifFalse: [
		Transcript show: 'Cantidad de temporadas: ', (contMay verTemporadas )printString;cr.
		(contMay verEstado == true)ifTrue: [
			Transcript show: 'Estado: En emision';cr.
		]ifFalse: [
			Transcript show: 'Estado: Finalizada';cr.
		].
	].
].

acciones at: 8 put:[
	Transcript show: '---Eliminando contenidos no disponibles---';cr.
	i:=1.
	[ i<= (plat tamanio) ]whileTrue: [
		cont:=plat recuperar: i.
		(cont verDisponibilidad == false)ifTrue: [
			Transcript 
				show: 'Mostrando contenido a eliminar';cr;
				show: 'Codigo ', (cont verCodigo )printString;cr;
				show: 'Titulo: ', cont verTitulo;cr;
				show: 'Genero: ',cont verGenero;cr;
				show: 'Anio de estreno: ', (cont verAnio )printString;cr;
				show: 'Tamanio ocupado: ', (cont verTamanio )printString,' GB';cr;
				show: 'Calificacion: ', (cont verCalificacion )printString;cr;
				show: 'Calificacion promedio: ', (cont verPromedio )printString;cr.
			(cont verDisponibilidad )ifTrue: [
				Transcript show: 'Disponible para reproduccion: Si';cr.
			]ifFalse: [
				Transcript show: 'Disponible para reproduccion: No';cr.
			].
			(cont esPelicula )ifTrue: [
				Transcript show: 'Duracion: ', (cont verDuracion )printString, ' minutos';cr.
				(cont verEstreno )ifTrue: [
					Transcript show: 'Estrenada en cine: Si';cr.
				]ifFalse: [
					Transcript show: 'Estrenada en cine: No';cr.
				].
			]ifFalse: [
				Transcript show: 'Cantidad de temporadas: ', (cont verTemporadas )printString;cr.
				(cont verEstado )ifTrue: [
					Transcript show: 'Estado: En emision';cr.
				]ifFalse: [
					Transcript show: 'Estado: Finalizado';cr.
				].
			].
			(MessageBox confirm: '¿Desea eliminar el contenido de la plataforma?' )ifTrue: [
				plat eliminarContenido: cont.
				Transcript show: 'Contenido eliminado';cr.
			]ifFalse: [
				i:=i+1.
			].
		]ifFalse: [
			i:=i+1.
		].
	].
].

acciones at: 9 put:[
	Transcript show: '---Generando diccionario de contenidos por genero---';cr.
	dicGenero:=Dictionary new.
	col:= plat verTodos.
	colGen:= col collect: [:el| el verGenero].
	sinRep:= colGen asSet.
	sinRep do: [: el | dicGenero at: el put: ( colGen occurrencesOf: el)].
	dicGenero keysDo: [ :cla| 
		Transcript 
			show: 'Genero: ', cla;cr;
			show: 'Cantidad de contenidos: ', (dicGenero at:cla)printString;cr.
	].
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
	(acciones at: opcion ifAbsent: [ [Transcript show: 'Opcion invalida';cr.] ])value.
	(rtaMenu)ifTrue: [
		rtaMenu:=(MessageBox confirm: '¿Desea volver al menu?' ).
	].
].
Transcript show: 'Programa finalizado';cr.