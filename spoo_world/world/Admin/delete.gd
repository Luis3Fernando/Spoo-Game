extends Node2D

var students = []
var numeros = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
var numHijos

func Lista_Estudiantes():
	var list =Db_Estudiante.new()
	students = list.obtener_estudiantes()

func _ready():
	Lista_Estudiantes()
	for i in range(len(students)):
		var object_student = Button.new()
		object_student.text = "           "+str(i+1)+"                                                                                             "+ students[i].nombreCompleto+"                                      "+"/20"
		object_student.icon = load("res://spoo_world/assets/icon/moneda_50.png")
		object_student.align = Button.ALIGN_LEFT
		object_student.icon_align = Button.ALIGN_RIGHT
		get_tree().get_root().get_node("delete/ScrollContainer/VBoxContainer").add_child(object_student)
		get_tree().get_root().get_node("delete/ScrollContainer/VBoxContainer").rect_min_size.x = 1028
		#$VBoxContainer.add_child(object_student)
	
	numHijos = get_tree().get_root().get_node("delete/ScrollContainer/VBoxContainer").get_child_count()
	asignar_eventos()

func asignar_eventos():
	for i in range(1,numHijos):
		var boton = get_tree().get_root().get_node("delete/ScrollContainer/VBoxContainer").get_child(i)
		var nombre = boton.text
		boton.connect("pressed", self, "_on_BotonPresionado", [nombre, boton])

func _on_BotonPresionado(nombre, button):
	var nombre_completo = obtener_nombre_del_texto(nombre)
	var objeto = Db_Estudiante.new()
	objeto.eliminar_estudiante(nombre_completo)
	
	var hijos = get_tree().get_root().get_node("delete/ScrollContainer/VBoxContainer").get_children()
	for hijo in hijos:
		get_tree().get_root().get_node("delete/ScrollContainer/VBoxContainer").remove_child(hijo)
	
	_ready()

func _on_Button_pressed():
	get_tree().change_scene("res://spoo_world/world/Admin/admin_main.tscn")


func obtener_nombre_del_texto(texto: String) -> String:
	var texto_sin_numero
	var texto_base = texto.substr(20, texto.length())
	var texto_base1 = texto_base.substr(0, texto_base.length()-20)
	var texto_sin_laterales = texto_base1.strip_edges()
		
	return texto_sin_laterales
