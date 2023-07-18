extends Node2D

func _ready():
	pass 


func _on_atras_pressed():
	get_tree().change_scene("res://spoo_world/world/Admin/admin_main.tscn")


func _on_student_pressed():
	get_tree().change_scene("res://spoo_world/world/Admin/edit_student.tscn")
