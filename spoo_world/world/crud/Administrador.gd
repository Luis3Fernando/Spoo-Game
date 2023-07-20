class_name Administrador

extends Object

var user: String
var password: String

func _init():
	# Constructor
	user = ""
	password = ""

func setNombreCompleto(nuevo_nombre: String):
	user = nuevo_nombre

func getNombreCompleto() -> String:
	return user

func setContra(nueva_contra: String):
	password = nueva_contra

func getContra() -> String:
	return password

