extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_Button_pressed():
	var new_scene_path = "res://spoo_world/world/levels/level1.tscn"  # Ruta a la nueva escena
	get_tree().change_scene(new_scene_path)

func _on_Button2_pressed():
	var new_scene_path = "res://spoo_world/world/levels/level2/level2.tscn"  # Ruta a la nueva escena
	get_tree().change_scene(new_scene_path)

func _on_Button3_pressed():
	var new_scene_path = "res://spoo_world/world/levels/level3.tscn"  # Ruta a la nueva escena
	get_tree().change_scene(new_scene_path)

func _on_Button4_pressed():
	var new_scene_path = "res://spoo_world/world/levels/level4.tscn"  # Ruta a la nueva escena
	get_tree().change_scene(new_scene_path)

func _on_Button5_pressed():
	var new_scene_path = "res://spoo_world/world/levels/level5/level5.tscn"  # Ruta a la nueva escena
	get_tree().change_scene(new_scene_path)
