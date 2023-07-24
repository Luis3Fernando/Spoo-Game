extends Node2D

var nombre_completo
var student
var completados
onready var label_student = $estudiante
onready var label_levels = $Sprite3/total_levels
onready var b1 = $b1
onready var b2 = $b2
onready var b3 = $b3
onready var b4 = $b4
onready var b5 = $b5

var b1_s = false
var b2_s = false
var b4_s = false
var b3_s = false
var b5_s = false

func _ready():
	var objeto = Db_Estudiante.new()
	nombre_completo = Singleton.student.nombreCompleto
	student = Singleton.student
	completados = objeto.contar_niveles_completados(student.completados)
	label_student.text = nombre_completo
	label_levels.text = str(completados)+" /5"
	Singleton.progreso_actual = completados + Singleton.progreso_actual
	b1_s = student.completados["level1"]
	b2_s = student.completados["level2"]
	b3_s = student.completados["level3"]
	b4_s = student.completados["level4"]
	b5_s = student.completados["level5"]
	
	
	if b1_s:
		b1.disabled =true
	

func _on_ButtonAtras_pressed():	
	var objeto = Db_Estudiante.new()
	var progreso_antes = objeto.contar_niveles_completados(student.completados)
	var new_scene_path = "res://spoo_world/world/inicio.tscn" 
	
	if progreso_antes<Singleton.progreso_actual:
		objeto.actualizar_estudiante(Singleton.student.nombreCompleto, Singleton.student)
		

	get_tree().change_scene(new_scene_path)	


func _on_b1_pressed():
	var new_scene_path = "res://spoo_world/world/levels/level1/level1.tscn"  # Ruta a la nueva escena
	get_tree().change_scene(new_scene_path)

func _on_b2_pressed():
	var new_scene_path = "res://spoo_world/world/levels/level2/level2.tscn"  # Ruta a la nueva escena
	get_tree().change_scene(new_scene_path)


func _on_b3_pressed():
	var new_scene_path = "res://spoo_world/world/levels/level3/level3.tscn"  # Ruta a la nueva escena
	get_tree().change_scene(new_scene_path)


func _on_b4_pressed():
	var new_scene_path = "res://spoo_world/world/levels/level4/level4.tscn"  # Ruta a la nueva escena
	get_tree().change_scene(new_scene_path)

func _on_b5_pressed():
	var new_scene_path = "res://spoo_world/world/levels/level5/level5.tscn"  # Ruta a la nueva escena
	get_tree().change_scene(new_scene_path)
