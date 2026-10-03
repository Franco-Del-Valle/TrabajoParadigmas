|acciones rta plat nomPlat empre lanz capac susPrin conjCont cont cod tit gen estre tam calif prom dispo durac cine tempor emision opcion|

Transcript clear.
rta:='s'.
acciones:=Dictionary new.


acciones at: 1 put:[
	Transcript show: '---Iniciando carga de contenido---';cr.
].

acciones at: 2 put:[
	Transcript show: '---Buscar contenido por codigo---';cr.
].

acciones at: 3 put[
	Transcript show: '---Modificar contenido por codigo---';cr.
].

acciones at: 4 put[
	Transcript show: '---Eliminar contenido por codigo---';cr.
].

acciones at: 5 put[
	Transcript show: '---Mostrar coleccion de maratoneables---';cr.
].

acciones at: 6 put[
	Transcript show: '---Tamaño promedio de contenidos y excedentes---';cr.
].

acciones at: 7 put[
	Transcript show: '---Mostrar contenido con mayor calificacion---';cr.
].

acciones at: 8 put[
	Transcript show: '---Eliminar contenidos no disponibles---';cr.
].

acciones at: 9 put[
	Transcript show: '---Diccionario de contenidos por genero---';cr.
].

acciones at: 0 put[
	Transcript show: '---Saliendo del menu---';cr.
	rta:='n'.
].

[ rta = 's' ]whileTrue: [
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
].