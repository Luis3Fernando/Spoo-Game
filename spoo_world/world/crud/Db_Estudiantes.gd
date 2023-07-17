extends Node

class_name Db_Estudiante

var rutaArchivo: String
var listaEstudiantes: Array = []

func _init():
	# Constructor
	listaEstudiantes = [Alumno.new(), Alumno.new()]
	
	# Obtener el directorio actual de trabajo
	var rutaArchivo = ProjectSettings.globalize_path("res://data/datos_alumnos.json")

func obtener_estudiantes() -> Array:
	cargar_estudiantes()
	return listaEstudiantes

# Función para crear un nuevo estudiante
func crear_estudiante(nombre: String):
	var nuevoEstudiante = Alumno.new()
	nuevoEstudiante.nombreCompleto = nombre
	listaEstudiantes.append(nuevoEstudiante)
	
	guardar_estudiantes()
# Función para guardar los estudiantes en un archivo
func guardar_estudiantes():
	var datosGuardados: Array = []
	
	for estudiante in listaEstudiantes:
		var datosEstudiante = {
			"nombreCompleto": estudiante.nombreCompleto
		}
		datosGuardados.append(datosEstudiante)
	
	var file = File.new()		
	var json_str = JSON.print(datosGuardados)
	
	if file.open(rutaArchivo, File.WRITE) == OK:
		file.store_string(json_str)
		file.close()
		print("Datos guardados en el archivo JSON.")
	else:
		print("Error al abrir el archivo para escritura.")
		
	#if file.open(rutaArchivo, File.WRITE) == OK:
	#	var datosEnTexto = JSON.print(datosGuardados)
	#	file.store_string(datosEnTexto)
	#	file.close()

# Función para cargar los estudiantes desde un archivo
func cargar_estudiantes():
	var file = File.new()
	if file.open(rutaArchivo, File.READ) == OK:
		var datosEnTexto = file.get_as_text()
		file.close()

		var datosGuardados = JSON.parse(datosEnTexto)
		if datosGuardados != null:
			for datosEstudiante in datosGuardados:
				#var nuevoEstudiante = Alumno.new()
				listaEstudiantes.append(datosEstudiante)

# Función para actualizar el nombre de un estudiante
func actualizar_nombre_estudiante(nombreActual: String, nuevoNombre: String):
	for estudiante in listaEstudiantes:
		if estudiante.nombreCompleto == nombreActual:
			estudiante.nombreCompleto = nuevoNombre
			break

# Función para eliminar un estudiante de la lista
func eliminar_estudiante(nombre: String):
	for i in range(listaEstudiantes.size()):
		var estudiante = listaEstudiantes[i]
		if estudiante.nombreCompleto == nombre:
			listaEstudiantes.remove(i)
			break
