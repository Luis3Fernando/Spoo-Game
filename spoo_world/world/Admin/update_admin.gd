extends Node2D
onready var input_password = $Panel/password/password_input
onready var input_user = $Panel/user/user_input

var admin

func _ready():
	var objeto = Db_Administrador.new()
	admin = objeto.obtener_administrador()
	input_password.text =admin["password"]
	input_user.text = admin["user"]

func _on_atras_pressed():
	get_tree().change_scene("res://spoo_world/world/Admin/admin_main.tscn")


func _on_actualizar_pressed():
	var objeto = Db_Administrador.new()
	objeto.actualizar_administrador(input_user.text,input_password.text)
	_ready()
