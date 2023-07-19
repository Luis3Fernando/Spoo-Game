extends Node2D

var students = []
var numHijos
signal nombreC

func Lista_Estudiantes():
	var list =Db_Estudiante.new()
	students = list.obtener_estudiantes()

func _ready():
	Lista_Estudiantes()
	for i in range(len(students)):
		var object_student = Button.new()
		object_student.text = "           "+str(i+1)+"                                                                                             "+ students[i].nombreCompleto                                      
		object_student.icon = load("res://spoo_world/assets/icon/arrow_50.png")
		object_student.align = Button.ALIGN_LEFT
		object_student.icon_align = Button.ALIGN_RIGHT
		get_tree().get_root().get_node("edit/ScrollContainer/VBoxContainer").add_child(object_student)
	
	numHijos = get_tree().get_root().get_node("edit/ScrollContainer/VBoxContainer").get_child_count()
	asignar_eventos()

func asignar_eventos():
	for i in range(1,numHijos):
		var boton = get_tree().get_root().get_node("edit/ScrollContainer/VBoxContainer").get_child(i)
		var nombre = boton.text
		boton.connect("pressed", self, "_on_BotonPresionado", [nombre])

func _on_BotonPresionado(nombre):	
	var nombreC = obtener_nombre_del_texto(nombre)
	var objeto = Db_Estudiante.new()
	var student = objeto.obtener_student(nombreC)
	Singleton.student = student
	
	var new_scene_path = "res://spoo_world/world/Admin/edit_user.tscn" 
	get_tree().change_scene(new_scene_path)
	
func obtener_nombre_del_texto(texto: String) -> String:
	var texto_sin_numero
	var texto_base = texto.substr(20, texto.length())
	#var texto_base1 = texto_base.substr(0, texto_base.length()-20)
	var texto_sin_laterales = texto_base.strip_edges()
		
	return texto_sin_laterales

func _on_Button_pressed():
	var new_scene_path = "res://spoo_world/world/Admin/admin_main.tscn" 
	get_tree().change_scene(new_scene_path)
