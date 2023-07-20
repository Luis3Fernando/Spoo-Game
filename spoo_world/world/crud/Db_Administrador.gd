extends Node

class_name Db_Administrador

var rutaArchivo: String = ProjectSettings.globalize_path("user://datos_admin.json")
var administrador = {}

func _init():
	administrador = {
		"user": "admin",
		"password": "admin"
	}

