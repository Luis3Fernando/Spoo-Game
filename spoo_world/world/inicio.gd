extends Node2D

var count=0
var items = ["Elemento 1", "Elemento 2", "Elemento 3"] 
func _ready():
	pass


func _on_TouchScreenButton_pressed():
	var new_scene_path = "res://spoo_world/world/Admin/Login.tscn"  # Ruta a la nueva escena
	get_tree().change_scene(new_scene_path)
	
