extends Node2D

var nombre_completo
var student
var completados
onready var label_student = $Sprite2/estudiante
onready var label_levels = $Sprite3/total_levels

func _ready():
	var objeto = Db_Estudiante.new()
	nombre_completo = Singleton.student.nombreCompleto
	student = Singleton.student
	completados = objeto.contar_niveles_completados(student.completados)
	label_student.text = nombre_completo
	label_levels.text = str(completados)+" /5"
	Singleton.progreso_actual = completados + Singleton.progreso_actual
	print("estudiante logueado: ", student.nombreCompleto)
	print("estudiante puntos: ", student.puntos)
	print("estudiante levels: ", student.completados)

func _on_Button_pressed():
	var new_scene_path = "res://spoo_world/world/levels/level1/level1.tscn"  # Ruta a la nueva escena
	get_tree().change_scene(new_scene_path)

func _on_Button2_pressed():
	var new_scene_path = "res://spoo_world/world/levels/level2/level2.tscn"  # Ruta a la nueva escena
	get_tree().change_scene(new_scene_path)

func _on_Button3_pressed():
	var new_scene_path = "res://spoo_world/world/levels/level3/level3.tscn"  # Ruta a la nueva escena
	get_tree().change_scene(new_scene_path)

func _on_Button4_pressed():
	var new_scene_path = "res://spoo_world/world/levels/level4/level4.tscn"  # Ruta a la nueva escena
	get_tree().change_scene(new_scene_path)

func _on_Button5_pressed():
	var new_scene_path = "res://spoo_world/world/levels/level5/level5.tscn"  # Ruta a la nueva escena
	get_tree().change_scene(new_scene_path)

func _on_ButtonAtras_pressed():	
	var objeto = Db_Estudiante.new()
	var progreso_antes = objeto.contar_niveles_completados(student.completados)
	var new_scene_path = "res://spoo_world/world/inicio.tscn" 
	
	if progreso_antes<Singleton.progreso_actual:
		print("estudiante logueado: ", student.nombreCompleto)
		print("estudiante puntos: ", student.puntos)
		print("estudiante levels: ", student.completados)
		objeto.actualizar_estudiante(Singleton.student.nombreCompleto, Singleton.student)
		

	get_tree().change_scene(new_scene_path)
