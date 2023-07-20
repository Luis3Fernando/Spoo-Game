extends Node2D
var usuario = "admin"
var password = "admin"

onready var usuario_input = $Panel/Usuario2/Usuario
onready var password_input = $Panel/Password/Password2

func _ready():
	password_input.secret = true

func _on_JUGAR_pressed():	
	if usuario_input.text == usuario and password_input.text == password:
		get_tree().change_scene("res://spoo_world/world/Admin/admin_main.tscn")
	
	usuario_input.text = ""
	password_input.text = ""


func _on_back_pressed():
	get_tree().change_scene("res://spoo_world/world/inicio.tscn")
