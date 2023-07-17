extends Node2D

var objeto
var bandera = false
var student = false
var admin = false

onready var student_check = get_tree().get_root().get_node("add/Sprite/Panel/Student/c_student")
onready var admin_check = get_tree().get_root().get_node("add/Sprite/Panel/administrator/c_administrator")
onready var myButton = get_tree().get_root().get_node("add/Sprite/Panel/JUGAR")

func _ready():
	pass
	
func _process(delta: float):
	var usuario_input = get_tree().get_root().get_node("add/Sprite/Panel/Usuario2/Usuario").text
	var password_input = get_tree().get_root().get_node("add/Sprite/Panel/Password/Password2").text
	
	var allFieldsFilled = usuario_input != "" and password_input != "" and bandera
	myButton.disabled = not allFieldsFilled

func _on_Button_pressed():
	get_tree().change_scene("res://spoo_world/world/Admin/admin_main.tscn")

func _on_JUGAR_pressed():
	var usuario_input = get_tree().get_root().get_node("add/Sprite/Panel/Usuario2/Usuario").text
	var password_input = get_tree().get_root().get_node("add/Sprite/Panel/Password/Password2").text
	
	if student:
		objeto = Db_Estudiante.new()
		objeto.crear_estudiante(usuario_input)
		print(objeto.obtener_estudiantes())
		
	if admin:
		pass
	
	get_tree().get_root().get_node("add/Sprite/Panel/Usuario2/Usuario").text = ""
	get_tree().get_root().get_node("add/Sprite/Panel/Password/Password2").text = ""
	
func _on_c_administrator_toggled(button_pressed):
	if button_pressed:
		bandera = true
		admin = true
		
	else:
		bandera = false
		admin = false
		
	if student_check.is_pressed():
		student_check.set_pressed(false)

func _on_c_student_toggled(button_pressed):
	if button_pressed:
		bandera = true
		student = true
		
	else:
		bandera = false
		student = false
	
	if admin_check.is_pressed():
		admin_check.set_pressed(false)
		
func activar_button():
	var usuario_input = get_tree().get_root().get_node("add/Sprite/Panel/Usuario2/Usuario").text
	var password_input = get_tree().get_root().get_node("add/Sprite/Panel/Password/Password2").text
	print(usuario_input.empty())
	
	if !(bandera or !usuario_input.empty() or !password_input.empty()):
		myButton.disabled = true
	
	else:
		myButton.disabled = false
	
	
