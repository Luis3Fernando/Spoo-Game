extends "user.gd"

class_name Admin

var cargo: String

func set_cargo(new_cargo: String):
	cargo = new_cargo

func get_cargo() -> String:
	return cargo
