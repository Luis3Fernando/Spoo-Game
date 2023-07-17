class_name Alumno

extends Object

var nombreCompleto: String
var puntos = {
	"level1": 0,
	"level2": 0,
	"level3": 0,
	"level4": 0,
	"level5": 0
}
func _init():
	# Constructor
	nombreCompleto = "none"

func obtenerPuntos(nivel: String) -> int:
	return puntos[nivel]

func asignarPuntos(nivel: String, cantidad: int):
	puntos[nivel] = cantidad

# Método getter para obtener el nombre completo del alumno
func get_nombreCompleto() -> String:
	return nombreCompleto

# Método setter para asignar el nombre completo del alumno
func set_nombreCompleto(nuevoNombre: String):
	nombreCompleto = nuevoNombre
