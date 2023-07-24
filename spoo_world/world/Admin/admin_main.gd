extends Node2D

func _ready():
	pass
onready var audio_player = get_node("AudioBoton")
func _on_Button_pressed():
	#var audio = get_node("AudioBoton")
	audio_player.play()
	get_tree().change_scene("res://spoo_world/world/Admin/Login.tscn")
 
func _on_TextureButton_pressed():
	#var audio1 = get_node("AudioBoton")
	audio_player.play()
	get_tree().change_scene("res://spoo_world/world/Admin/update_admin.tscn")

func _on_progress_pressed():
	var audio2 = get_node("AudioProgress")
	audio2.play()
	get_tree().change_scene("res://spoo_world/world/Admin/progress.tscn")

func _on_add_pressed():
	audio_player.play()
	get_tree().change_scene("res://spoo_world/world/Admin/add.tscn")


func _on_edit_pressed():
	#var audio4 = get_node("AudioBoton")
	audio_player.play()
	get_tree().change_scene("res://spoo_world/world/Admin/edit_student.tscn")

func _on_drop_pressed():
	#var audio = get_node("AudioBoton")
	audio_player.play()
	get_tree().change_scene("res://spoo_world/world/Admin/delete.tscn")

