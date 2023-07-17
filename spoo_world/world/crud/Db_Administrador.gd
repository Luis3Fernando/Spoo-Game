extends Node

class_name Db_Administrador

var rutaArchivo: String = ProjectSettings.globalize_path("user://datos_alumnos.json")
var listaAdministradores: Array = []

func _init():
	# Constructor
	listaAdministradores = [
	{
		"nombreCompleto": "Alexander Chumbes",
		"contra": "1234"
	},
	{
		"nombreCompleto": "Roly Summer",
		"contra": "1234"
	},
	{
		"nombreCompleto": "Maria Mercedes",
		"contra": "1234"
	}
]

func obtener_adminsitradores() -> Array:
	return listaAdministradores

func crear_admin(nombre: String, password: String):
	var nuevo = Administrador.new()
	nuevo.nombreCompleto = nombre
	nuevo.contra = password
	listaAdministradores.append(nuevo)
	guardar_adminsitradores()

func guardar_adminsitradores():
	var datosGuardados: Array = []	
	for admin in listaAdministradores:
		var datosAdmin = {
			"nombreCompleto": admin.nombreCompleto
		}
		datosGuardados.append(datosAdmin)
		
	var file = File.new()
	if file.open(rutaArchivo, File.WRITE) == OK:
		var datosEnTexto = JSON.print(datosGuardados)
		file.store_string(datosEnTexto)
		file.close()


func cargar_estudiantes():
	var file = File.new()
	if file.open(rutaArchivo, File.READ) == OK:
		var datosEnTexto = file.get_as_text()
		file.close()

		var datosGuardados = JSON.parse(datosEnTexto)
		if datosGuardados != null:
			for datosAdmin in datosGuardados:
				var nuevoAdmin = Admin.new()
				listaAdministradores.append(nuevoAdmin)

func actualizar_nombre(nombreActual: String, nuevoNombre: String):
	for admin in listaAdministradores:
		if admin.nombreCompleto == nombreActual:
			admin.nombreCompleto = nuevoNombre
			break

func eliminar_admin(nombre: String):
	for i in range(listaAdministradores.size()):
		var admin = listaAdministradores[i]
		if admin.nombreCompleto == nombre:
			listaAdministradores.remove(i)
			break
