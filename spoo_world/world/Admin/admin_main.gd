extends Node2D

func _ready():
	pass

func _on_Button_pressed():
	get_tree().change_scene("res://spoo_world/world/Admin/Login.tscn")

func _on_TextureButton_pressed():
	get_tree().change_scene("res://spoo_world/world/Admin/update_admin.tscn")


func _on_progress_pressed():
	get_tree().change_scene("res://spoo_world/world/Admin/progress.tscn")


func _on_add_pressed():
	get_tree().change_scene("res://spoo_world/world/Admin/add.tscn")


func _on_edit_pressed():
	get_tree().change_scene("res://spoo_world/world/Admin/edit_student.tscn")

func _on_drop_pressed():
	get_tree().change_scene("res://spoo_world/world/Admin/delete.tscn")
