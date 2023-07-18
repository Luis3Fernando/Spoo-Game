extends Node2D

var students = []

var numHijos

var colorNormal = Color(0.2, 0.5, 0.8)  # Ejemplo: Azul claro
var colorHover = Color(0.4, 0.7, 1.0)  # Ejemplo: Azul claro más brillante
var colorPressed = Color(0.1, 0.3, 0.6)  # Ejemplo: Azul oscuro
 
func Lista_Estudiantes():
	var list = Db_Estudiante.new()
	students = list.obtener_estudiantes()

func _ready():	
	Lista_Estudiantes()
	#for i in range(len(students)):
	#	var object_student = Button.new()
	#	#add_child(object_student)
	#	object_student.text = "\t\t" + str(i) + "\t\t\t" + students[i]
	#	object_student.icon = load("res://spoo_world/assets/icon/arrow_50.png")
	#	object_student.align = Button.ALIGN_LEFT
	#	object_student.icon_align = Button.ALIGN_RIGHT
	#	$VBoxContainer.add_child(object_student)
	for i in range(len(students)):
		var object_student = Button.new()
		#add_child(object_student)
		object_student.text = "           "+str(i+1)+"                                                                                             "+ students[i].nombreCompleto
		object_student.icon = load("res://spoo_world/assets/icon/arrow_50.png")
		object_student.align = Button.ALIGN_LEFT
		object_student.icon_align = Button.ALIGN_RIGHT
		object_student.add_color_override("normal_color",colorNormal)
		object_student.add_color_override("hover_color", colorHover)
		object_student.add_color_override("pressed_color", colorPressed)
		get_tree().get_root().get_node("inicio/ScrollContainer/VBoxContainer").add_child(object_student)
		#$VBoxContainer.add_child(object_student)
	
	numHijos = get_tree().get_root().get_node("inicio/ScrollContainer/VBoxContainer").get_child_count()
	asignar_eventos()

func _on_TouchScreenButton_pressed():
	var new_scene_path = "res://spoo_world/world/Admin/Login.tscn" 
	get_tree().change_scene(new_scene_path)
	

func _on_Button_pressed():
	var new_scene_path = "res://spoo_world/world/levels/level_main.tscn" 
	get_tree().change_scene(new_scene_path)

func asignar_eventos():
	for i in range(1,numHijos):
		var boton = get_tree().get_root().get_node("inicio/ScrollContainer/VBoxContainer").get_child(i)
		boton.connect("pressed", self, "_on_BotonPresionado", [boton.text])

func _on_BotonPresionado(nombre):
	var nombreC = obtener_nombre_del_texto(nombre)
	crear_nueva_escena(nombreC)
	
func crear_nueva_escena(nombre_completo):
	var nueva_escena = load("res://spoo_world/world/levels/level_main.tscn").instance()
	nueva_escena.inicializar(nombre_completo)
	get_parent().add_child(nueva_escena)
	
func obtener_nombre_del_texto(texto: String) -> String:
	var texto_sin_numero
	var texto_base = texto.substr(20, texto.length())
	#var texto_base1 = texto_base.substr(0, texto_base.length()-20)
	var texto_sin_laterales = texto_base.strip_edges()
		
	return texto_sin_laterales
