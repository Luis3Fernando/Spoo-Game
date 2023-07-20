extends Node

var student
var scene_reload
var rondas1 = 0
var rondas2 = 0
var rondas3 = 0
var rondas4 = 0
var rondas5 = 0
var stay = 0
var progreso_actual = 0

func _ready():
	pass 

func showSceneWithDelay(scene_path: String, scene_rel: String):
	var scene = load(scene_path)
	var scene_instance = scene.instance()
	
	#get_tree().get_root().add_child(scene_instance)
	get_tree().get_root().add_child(scene_instance)
	
	# Iniciar un temporizador de dos segundos
	var timer = Timer.new()
	timer.wait_time = 200.0
	timer.connect("timeout", scene_instance, "queue_free")
	scene_instance.add_child(timer)
	timer.start()
	
	scene_reload = scene_rel
func recargar():
	var scene_main = "res://spoo_world/world/levels/level_main.tscn"
	match stay:
		1:
			if rondas1==10 and !student.completados["level1"]:
				student.completados["level1"] = true
				progreso_actual+=1
				get_tree().change_scene(scene_main)
				
			else:
				get_tree().change_scene(scene_reload)
		2:
			if rondas2==10 and !student.completados["level2"]:
				student.completados["level2"] = true
				progreso_actual+=1
				get_tree().change_scene(scene_main)
				
			else:
				get_tree().change_scene(scene_reload)
		3:
			if rondas3==10 and !student.completados["level3"]:
				student.completados["level3"] = true
				progreso_actual+=1
				get_tree().change_scene(scene_main)
				
			else:
				get_tree().change_scene(scene_reload)
		4:
			if rondas4==10 and !student.completados["level4"]:
				student.completados["level4"] = true
				progreso_actual+=1
				get_tree().change_scene(scene_main)
				
			else:
				get_tree().change_scene(scene_reload)
		5:
			if rondas5==10 and !student.completados["level5"]:
				student.completados["level5"] = true
				progreso_actual+=1
				get_tree().change_scene(scene_main)
				
			else:
				get_tree().change_scene(scene_reload)
		_:
			pass

