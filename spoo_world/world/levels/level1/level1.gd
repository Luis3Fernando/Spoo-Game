extends Node2D

var student
var numero_seleccionado = 0
var numero_entero_aleatorio 
onready var animacion = $spoo/animation_spoo
onready var space1 = $space1
onready var space2 = $space2
onready var space3 = $space3
onready var space4 = $space4
onready var space5 = $space5
onready var space6 = $space6
onready var space7 = $space7
onready var space8 = $space8

onready var madera1 = $madera1/Sprite
onready var madera2 = $madera2/Sprite
onready var madera3 = $madera3/Sprite
onready var madera4 = $madera4/Sprite
onready var madera5 = $madera5/Sprite
onready var madera6 = $madera6/Sprite
onready var madera7 = $madera7/Sprite
onready var madera8 = $madera8/Sprite

onready var label = $puntos/puntos_l

func _ready():
	Singleton.stay = 1
	student = Singleton.student
	Singleton.rondas1 +=1
	label.text = str(student.puntos["level1"]/10)+"/20   ronda: "+str(Singleton.rondas1)
	animacion.play("parpadear")
	var rng = RandomNumberGenerator.new()
	rng.randomize()
	numero_entero_aleatorio = rng.randi_range(1, 8)
	mostrar_bloques(numero_entero_aleatorio)

func _on_back_pressed():
	var new_scene_path = "res://spoo_world/world/levels/level_main.tscn"  # Ruta a la nueva escena
	get_tree().change_scene(new_scene_path)

func mostrar_bloques(cantidad: int):
	match cantidad:
		1:
			madera2.visible = false
			madera3.visible = false
			madera4.visible = false
			madera5.visible = false
			madera6.visible = false
			madera7.visible = false
			madera8.visible = false
			
		2:
			madera3.visible = false
			madera4.visible = false
			madera5.visible = false
			madera6.visible = false
			madera7.visible = false
			madera8.visible = false
		3:
			madera4.visible = false
			madera5.visible = false
			madera6.visible = false
			madera7.visible = false
			madera8.visible = false
		4:
			madera5.visible = false
			madera6.visible = false
			madera7.visible = false
			madera8.visible = false
		5:
			madera6.visible = false
			madera7.visible = false
			madera8.visible = false
		6:
			madera7.visible = false
			madera8.visible = false
		7:
			madera8.visible = false
		_:
			print("Cantidad no reconocida")

func _on_TButton_Music_pressed():
	var audioPlayer = get_node("AudioFondo") 
	if audioPlayer.playing:
		audioPlayer.stop()
	else:
		audioPlayer.play(audioPlayer.get_playback_position())

func _on_space2_pressed():
	if space2.pressed:
		numero_seleccionado = 2
		space1.pressed= true
	else:
		numero_seleccionado = 1
		space3.pressed = false
		space4.pressed = false
		space5.pressed = false
		space6.pressed = false
		space7.pressed = false
		space8.pressed = false


func _on_space1_pressed():
	if space1.pressed:
		numero_seleccionado = 1
		space2.pressed = false
		space3.pressed = false
		space4.pressed = false
		space5.pressed = false
		space6.pressed = false
		space7.pressed = false
		space8.pressed = false
	
	else:
		numero_seleccionado = 0
		space2.pressed = false
		space3.pressed = false
		space4.pressed = false
		space5.pressed = false
		space6.pressed = false
		space7.pressed = false
		space8.pressed = false


func _on_space3_pressed():
	if space3.pressed:
		numero_seleccionado = 3
		space1.pressed= true
		space2.pressed = true
	else:
		numero_seleccionado = 2
		space4.pressed = false
		space5.pressed = false
		space6.pressed = false
		space7.pressed = false
		space8.pressed = false


func _on_space4_pressed():
	
	if space4.pressed:
		numero_seleccionado = 4
		space1.pressed= true
		space2.pressed = true
		space3.pressed = true		
	else:
		numero_seleccionado = 3
		space5.pressed = false
		space6.pressed = false
		space7.pressed = false
		space8.pressed = false


func _on_space5_pressed():
	
	if space5.pressed:
		numero_seleccionado = 5
		space1.pressed= true
		space2.pressed = true
		space3.pressed = true
		space4.pressed = true
		
	else:
		numero_seleccionado = 4
		space6.pressed = false
		space7.pressed = false
		space8.pressed = false


func _on_space6_pressed():
	
	if space6.pressed:
		numero_seleccionado = 6
		space1.pressed= true
		space2.pressed = true
		space3.pressed = true
		space4.pressed = true
		space5.pressed = true
		
	else:
		numero_seleccionado = 5
		space7.pressed = false
		space8.pressed = false


func _on_space7_pressed():
	
	if space7.pressed:
		numero_seleccionado = 7
		space1.pressed= true
		space2.pressed = true
		space3.pressed = true
		space4.pressed = true
		space5.pressed = true
		space6.pressed = true
		
	else:
		numero_seleccionado = 6
		space8.pressed = false


func _on_space8_pressed():
	
	if space8.pressed:
		numero_seleccionado = 8
		space1.pressed= true
		space2.pressed = true
		space3.pressed = true
		space4.pressed = true
		space5.pressed = true
		space6.pressed = true
		space7.pressed = true		
	
	else:
		numero_seleccionado = 7


func _on_final_body_entered(body):
	if numero_seleccionado == numero_entero_aleatorio:
		if Singleton.rondas1<=20 and !student.completados["level1"]:
			student.puntos["level1"] +=2
		Singleton.showSceneWithDelay("res://spoo_world/world/modal/bien.tscn", "res://spoo_world/world/levels/level1/level1.tscn")
	else:
		if Singleton.rondas1<=20 and !student.completados["level1"]:
			student.puntos["level1"] +=1
		Singleton.showSceneWithDelay("res://spoo_world/world/modal/mal.tscn", "res://spoo_world/world/levels/level1/level1.tscn")
	
	#get_tree().change_scene("res://spoo_world/world/levels/level1/level1.tscn")
