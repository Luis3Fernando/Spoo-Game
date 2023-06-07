extends Node2D
var usuario = "Admin"
var password = "admin"
var created = false

func _on_JUGAR_pressed():
	usuario = $Usuario.text
	password = $Password2.text
	$Usuario.text = ""
	$Password2.text = ""
	print ("Account Created!")
	if $Usuario.text == usuario:
		if $Password2.text == password:
			print ("INGRESAR Seccess!")
			get_tree().change_scene_to_file("res://menu.tscn")
		else:
			$Usuario.text = ""
			$Password2.text = ""
			print ("INGRESAR Fail!")
	else:
		$Usuario.text = ""
		$Password2.text = ""
		print ("INGRESAR Fail!")
