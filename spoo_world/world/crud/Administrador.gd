class_name Administrador

extends Object

var nombreCompleto: String
var contra: String

func _init():
	# Constructor
	nombreCompleto = ""
	contra = ""

func setNombreCompleto(nuevo_nombre: String):
	nombreCompleto = nuevo_nombre

func getNombreCompleto() -> String:
	return nombreCompleto

func setContra(nueva_contra: String):
	contra = nueva_contra

func getContra() -> String:
	return contra

