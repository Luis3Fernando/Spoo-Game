extends Node2D
var usuario = "Admin"
var password = "admin"

func _on_JUGAR_pressed():
	var usuario_input = get_tree().get_root().get_node("Login/Panel/Usuario").text
	var password_input = get_tree().get_root().get_node("Login/Panel/Password2").text
	get_tree().get_root().get_node("Login/Panel/Usuario").text = ""
	get_tree().get_root().get_node("Login/Panel/Password2").text = ""
	
	if usuario_input == usuario and password_input == password:
		print ("INGRESAR Seccess!")
		get_tree().change_scene("res://spoo_world/world/Admin/admin_main.tscn")
		
	else:
		print ("INGRESAR Fail!")


func _on_back_pressed():
	get_tree().change_scene("res://spoo_world/world/inicio.tscn")
