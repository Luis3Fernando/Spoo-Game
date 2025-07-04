extends Node2D

var objeto
var admin
var password = ""

onready var usuario_input = $Panel/Usuario2/Usuario
onready var password_input = $Panel/Password/Password2

func _ready():
	objeto = Db_Administrador.new()
	admin = objeto.obtener_administrador()

func _on_JUGAR_pressed():	
	if usuario_input.text == admin["user"] and password_input.text== admin["password"]:
		var audio= get_node("AudioBoton")
		audio.play()
		get_tree().change_scene("res://spoo_world/world/Admin/admin_main.tscn")
	
	usuario_input.text = ""
	password_input.text = ""
	password = ""


func _on_back_pressed():
	var audio1= get_node("AudioBoton")
	audio1.play()
	get_tree().change_scene("res://spoo_world/world/inicio.tscn")

func string_a_array(palabra: String) -> Array:
	var array_de_caracteres = []
	if palabra.empty():
		array_de_caracteres.append(" ")
		
	else:
		for i in range(palabra.length()):
			array_de_caracteres.append(palabra[i])
		
	return array_de_caracteres
