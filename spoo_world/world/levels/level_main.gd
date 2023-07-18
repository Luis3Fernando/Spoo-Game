extends Node2D

var nombre_completo
var student
var completados
onready var label_student = $Sprite2/estudiante
onready var label_levels = $Sprite3/total_levels

func _ready():
	label_student.text = student.nombreCompleto
	label_levels.text = str(completados)+" /5"

func inicializar(parametro1):
	nombre_completo = parametro1
	var objeto = Db_Estudiante.new()
	student = objeto.obtener_student(nombre_completo)
	completados = objeto.contar_niveles_completados(student.completados)

func _on_Button_pressed():
	var new_scene_path = "res://spoo_world/world/levels/level1.tscn"  # Ruta a la nueva escena
	get_tree().change_scene(new_scene_path)

func _on_Button2_pressed():
	var new_scene_path = "res://spoo_world/world/levels/level2/level2.tscn"  # Ruta a la nueva escena
	get_tree().change_scene(new_scene_path)

func _on_Button3_pressed():
	var new_scene_path = "res://spoo_world/world/levels/level3.tscn"  # Ruta a la nueva escena
	get_tree().change_scene(new_scene_path)

func _on_Button4_pressed():
	var new_scene_path = "res://spoo_world/world/levels/level4.tscn"  # Ruta a la nueva escena
	get_tree().change_scene(new_scene_path)

func _on_Button5_pressed():
	var new_scene_path = "res://spoo_world/world/levels/level5/level5.tscn"  # Ruta a la nueva escena
	get_tree().change_scene(new_scene_path)


func _on_ButtonAtras_pressed():
	var new_scene_path = "res://spoo_world/world/inicio.tscn"  # Ruta a la nueva escena
	get_tree().change_scene(new_scene_path)
