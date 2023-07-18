extends Node2D

func _ready():
	pass 

func _on_Button_pressed():
	get_tree().change_scene("res://spoo_world/world/Admin/Login.tscn")

func _on_Button2_pressed():
	get_tree().change_scene("res://spoo_world/world/Admin/progress.tscn")


func _on_ButtonEdit_pressed():
	get_tree().change_scene("res://spoo_world/world/Admin/edit_main.tscn")

func _on_ButtonDelete_pressed():
	get_tree().change_scene("res://spoo_world/world/Admin/delete.tscn")


func _on_ButtonAdd_pressed():
	get_tree().change_scene("res://spoo_world/world/Admin/add.tscn")
