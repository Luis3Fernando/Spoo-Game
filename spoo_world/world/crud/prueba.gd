class_name Prueba

extends Object

var nombre : String

func _init():
	# Constructor
	nombre = ""

func getNombre() ->String:
	return nombre

func setNombre(nombre_nuevo:String):
	nombre = nombre_nuevo
