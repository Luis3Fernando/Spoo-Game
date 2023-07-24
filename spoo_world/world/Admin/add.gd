extends Node2D

var objeto
var bandera = false
var admin = false

onready var myButton = get_tree().get_root().get_node("add/Sprite/Panel/JUGAR")

func _ready():
	pass
	
func _process(delta: float):
	var usuario_input = get_tree().get_root().get_node("add/Sprite/Panel/Usuario2/Usuario").text
	var password_input = get_tree().get_root().get_node("add/Sprite/Panel/Password/Password2").text
	
	var allFieldsFilled = usuario_input != "" and password_input != ""
	myButton.disabled = not allFieldsFilled

func _on_Button_pressed():
	get_tree().change_scene("res://spoo_world/world/Admin/admin_main.tscn")

func _on_JUGAR_pressed():
	var nombre_input = get_tree().get_root().get_node("add/Sprite/Panel/Usuario2/Usuario").text
	var apellido_input = get_tree().get_root().get_node("add/Sprite/Panel/Password/Password2").text
	var nombre_completo = nombre_input.strip_edges() +" " +apellido_input.strip_edges()
	
	objeto = Db_Estudiante.new()
	objeto.crear_estudiante(nombre_completo)
	
	get_tree().get_root().get_node("add/Sprite/Panel/Usuario2/Usuario").text = ""
	get_tree().get_root().get_node("add/Sprite/Panel/Password/Password2").text = ""
	
