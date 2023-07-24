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
var bandera_sonido= false 

func _ready():
	
	pass 

func showSceneWithDelay(scene_path: String, scene_rel: String):
	var scene = load(scene_path)
	var scene_instance = scene.instance()
	var bandera_bien = buscar_palabra_bien(scene_path)
	var bandera_mal = buscar_palabra_mal(scene_path)
	
<<<<<<< HEAD
	if bandera_bien:
		print("pon el sonido de bien")
	if bandera_mal:
		print("pon el de mal")
=======
	print("bien: ", bandera_bien)
	print("mal: ", bandera_mal)
	
	
	#if bandera_bien :
	#	var audio= load("res://spoo_world/assets/audio/bien.mp3")
	#	var audio_player = AudioStreamPlayer.new()
	#	audio_player.stream = audio
	#	add_child(audio_player)
	#	audio_player.play()
	#	audio_player.autoplay=false
	
	#if bandera_mal :
	#	var audio = load("res://spoo_world/assets/audio/error.mp3")
	#	var audio_player = AudioStreamPlayer.new()
	#	audio_player.stream = audio
	#	add_child(audio_player)
	#	audio_player.play()
	#	audio_player.autoplay=false
	
>>>>>>> e666446c8709a9109070c77ec49a3493069e3b0d
	#get_tree().get_root().add_child(scene_instance)
	get_tree().get_root().add_child(scene_instance)
	
	# Iniciar un temporizador de dos segundos
	var timer = Timer.new()
	timer.wait_time = 200.0
	timer.connect("timeout", scene_instance, "queue_free")
	scene_instance.add_child(timer)
	timer.start()
	
	scene_reload = scene_rel

func buscar_palabra_bien(cadena: String) -> bool:
	var palabra_buscada = "bien"
	var longitud_cadena = cadena.length()
	var longitud_palabra = palabra_buscada.length()

	for i in range(longitud_cadena - longitud_palabra + 1):
		var subcadena = cadena.substr(i, longitud_palabra)
		if subcadena == palabra_buscada:
			return true

	return false
	

func buscar_palabra_mal(cadena: String) -> bool:
	var palabra_buscada = "mal"
	var longitud_cadena = cadena.length()
	var longitud_palabra = palabra_buscada.length()

	for i in range(longitud_cadena - longitud_palabra + 1):
		var subcadena = cadena.substr(i, longitud_palabra)
		if subcadena == palabra_buscada:
			return true

	return false


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
