extends Node

class_name Db_Estudiante
var rutaArchivo: String = ProjectSettings.globalize_path("user://datos_alumnos.json")
var listaEstudiantes: Array = [
	{
		"nombreCompleto": "Juan Pérez",
		"puntos": {
			"level1": 10,
			"level2": 15,
			"level3": 5,
			"level4": 8,
			"level5": 12
		}
	},
	{
		"nombreCompleto": "María García",
		"puntos": {
			"level1": 18,
			"level2": 7,
			"level3": 14,
			"level4": 3,
			"level5": 20
		}
	},
	{
		"nombreCompleto": "Carlos Rodríguez",
		"puntos": {
			"level1": 4,
			"level2": 9,
			"level3": 16,
			"level4": 2,
			"level5": 11
		}
	}
]

func obtener_estudiantes() -> Array:
	return listaEstudiantes

# Función para crear un nuevo estudiante
func crear_estudiante(nombre: String):
	var nuevoEstudiante = Alumno.new()
	listaEstudiantes.append(nuevoEstudiante)

# Función para guardar los estudiantes en un archivo
func guardar_estudiantes():
	var datosGuardados: Array = []
	
	for estudiante in listaEstudiantes:
		var datosEstudiante = {
			"nombreCompleto": estudiante.nombreCompleto
		}
		datosGuardados.append(datosEstudiante)
		
	var file = File.new()
	if file.open(rutaArchivo, File.WRITE) == OK:
		var datosEnTexto = JSON.print(datosGuardados)
		file.store_string(datosEnTexto)
		file.close()

# Función para cargar los estudiantes desde un archivo
func cargar_estudiantes():
	var file = File.new()
	if file.open(rutaArchivo, File.READ) == OK:
		var datosEnTexto = file.get_as_text()
		file.close()

		var datosGuardados = JSON.parse(datosEnTexto)
		if datosGuardados != null:
			for datosEstudiante in datosGuardados:
				var nuevoEstudiante = Alumno.new()
				listaEstudiantes.append(nuevoEstudiante)

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
