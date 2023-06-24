extends "user.gd"

class Student:

	var puntos: int

	func set_puntos(new_puntos: int):
		puntos = new_puntos

	func get_puntos() -> int:
		return puntos
