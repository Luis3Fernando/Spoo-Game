extends Node

class_name Db_Administrador

var rutaArchivo: String = ProjectSettings.globalize_path("user://datos_admin.json")
var administrador = {}

func _init():
	pass
	
func obtener_administrador():
	cargar_administrador()
	return administrador

func cargar_administrador():
	var file = File.new()
	if file.open(rutaArchivo, File.READ) == OK:
		var datosEnTexto = file.get_as_text()
		file.close()
		
		var parsed_data = parse_json(datosEnTexto)
		if parsed_data != null and parsed_data is Dictionary:
			
			administrador = parsed_data
		else:
			administrador = {
					"user": "admin",
					"password": "admin"
			}
	else:
		print("Error al abrir el archivo para lectura.")
		
func guardar_administrador():	
	var file = File.new()		
	var json_str = JSON.print(administrador)
	
	if file.open(rutaArchivo, File.WRITE) == OK:
		file.store_string(json_str)
		file.close()
		print("Datos guardados en el archivo JSON.")
	else:
		print("Error al abrir el archivo para escritura.")

func actualizar_administrador(user: String, passsword: String):
	administrador["user"] = user
	administrador["password"] = passsword
	guardar_administrador()
	

