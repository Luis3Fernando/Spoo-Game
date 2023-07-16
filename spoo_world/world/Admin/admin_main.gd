extends Node2D
#jbojnkñl
# Called when the node enters the scene tree for the first time.
func _ready():
	pass 

func _on_Button_pressed():
	get_tree().change_scene("res://spoo_world/world/Admin/Login.tscn")

func _on_Button2_pressed():
	get_tree().change_scene("res://spoo_world/world/Admin/progress.tscn")


func _on_ButtonEdit_pressed():
	get_tree().change_scene("res://spoo_world/world/Admin/edit.tscn")

func _on_ButtonDelete_pressed():
	get_tree().change_scene("res://spoo_world/world/Admin/delete.tscn")


func _on_ButtonAdd_pressed():
	get_tree().change_scene("res://spoo_world/world/Admin/add.tscn")
