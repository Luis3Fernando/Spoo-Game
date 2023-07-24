extends Node2D


onready var password_input = $Password/Password2
var objeto
var admin
var password = ""

func _ready():
	objeto = Db_Administrador.new()
	admin = objeto.obtener_administrador()


func _on_Password2_text_changed():
	var texto = password_input.text
	var arreglo = string_a_array(texto)
	password = password + arreglo[0]
	password_input.text = ""
	for i in range(arreglo.size()):
		password_input.text = password_input.text +"*"
		
func string_a_array(palabra: String) -> Array:
	var array_de_caracteres = []
	if palabra.empty():
		array_de_caracteres.append(" ")
		
	else:
		for i in range(palabra.length()):
			array_de_caracteres.append(palabra[i])
		
	return array_de_caracteres


func _on_JUGAR_pressed():
	if password.strip_edges()==admin["password"]:
		var objeto = Db_Estudiante.new()
		var student = Singleton.student
		var progreso_antes = objeto.contar_niveles_completados(student.completados)
		get_tree().change_scene("res://spoo_world/world/inicio.tscn")
		Singleton.progreso_actual = progreso_antes + Singleton.progreso_actual
		if progreso_antes<Singleton.progreso_actual:
			objeto.actualizar_estudiante(Singleton.student.nombreCompleto, Singleton.student)
		
		Singleton.rondas1 = 0
		Singleton.rondas2 = 0
		Singleton.rondas3 = 0
		Singleton.rondas4 = 0
		Singleton.rondas5 = 0
	password_input.text=""


func _on_back_pressed():
	var new_scene_path = "res://spoo_world/world/levels/level_main.tscn"  # Ruta a la nueva escena
	get_tree().change_scene(new_scene_path)
