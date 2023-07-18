extends Node

class_name Db_Estudiante

var rutaArchivo: String
var listaEstudiantes: Array = []
func _init():
	rutaArchivo = ProjectSettings.globalize_path("user://datos_alumnos.json")

func obtener_estudiantes() -> Array:
	cargar_estudiantes()
	return listaEstudiantes

# Función para crear un nuevo estudiante
func crear_estudiante(nombre: String):
	var nuevoEstudiante = Alumno.new()
	nuevoEstudiante.nombreCompleto = nombre
	var lista=obtener_estudiantes()
	lista.append(nuevoEstudiante)
	
	guardar_estudiantes()
# Función para guardar los estudiantes en un archivo
func guardar_estudiantes():
	var datosGuardados: Array = []
	
	for estudiante in listaEstudiantes:
		var datosEstudiante = {
			"nombreCompleto": estudiante.nombreCompleto,
			"puntos": {
				"level1": estudiante.puntos["level1"],
				"level2": estudiante.puntos["level2"],
				"level3": estudiante.puntos["level3"],
				"level4": estudiante.puntos["level4"],
				"level5": estudiante.puntos["level5"]
			},
			"completados": {
				"level1": estudiante.completados["level1"],
				"level2": estudiante.completados["level2"],
				"level3": estudiante.completados["level3"],
				"level4": estudiante.completados["level4"],
				"level5": estudiante.completados["level5"]
			}
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

# Función para cargar los estudiantes desde un archivo
func cargar_estudiantes():
	var file = File.new()
	if file.open(rutaArchivo, File.READ) == OK:
		var datosEnTexto = file.get_as_text()
		file.close()
		#print("Datos leídos del archivo")
		var parsed_data = parse_json(datosEnTexto)
		if parsed_data != null:
			for datosEstudiante in parsed_data:
				var nombre_completo = datosEstudiante["nombreCompleto"]
				var puntos = datosEstudiante["puntos"]
				var completados = datosEstudiante["completados"]
				var data_student = Alumno.new()
				data_student.nombreCompleto = nombre_completo
				data_student.puntos = puntos
				data_student.completados = completados
				listaEstudiantes.append(data_student)
		
			#print("Estudiantes cargados")
		else:
			print("Error al analizar los datos JSON.")
	else:
		print("Error al abrir el archivo para lectura.")


# Función para actualizar el nombre de un estudiante
func actualizar_nombre_estudiante(nombreActual: String, nuevoNombre: String):
	cargar_estudiantes()
	for estudiante in listaEstudiantes:
		if estudiante.nombreCompleto == nombreActual:
			estudiante.nombreCompleto = nuevoNombre
			break
	guardar_estudiantes()
	
# Función para eliminar un estudiante de la lista
func eliminar_estudiante(nombre_eliminar: String):
	cargar_estudiantes()
	var student
	for i in range(listaEstudiantes.size()):
		student = listaEstudiantes[i]
		if student.nombreCompleto == nombre_eliminar:
			listaEstudiantes.remove(i)
			break
	guardar_estudiantes()
	
func obtener_student(nombre: String):
	cargar_estudiantes()
	for estudiante in listaEstudiantes:
		if estudiante.nombreCompleto == nombre:
			return estudiante
			break

func contar_niveles_completados(completados: Dictionary) -> int:
	var contador = 0

	for nivel in completados.keys():
		if completados[nivel]:
			contador += 1

	return contador
