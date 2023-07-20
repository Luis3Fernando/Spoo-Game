extends Node2D

var student

var number1: int
var number2: int
var imagenNumero1: Texture
var imagenNumero2: Texture
var imagenNumero3: Texture
var imagenNumero4: Texture
var imagenNumero5: Texture
var imagenNumero6: Texture
var imagenNumero7: Texture
var imagenNumero8: Texture
var imagenNumero9: Texture

onready var numeroIzqButton = $ColorRect/numero_iz
onready var numeroDerButton =$ColorRect2/numero_der
onready var label = $points/label_point

func _ready():
	Singleton.stay = 4
	student = Singleton.student
	#animation.play("parpadear")
	Singleton.rondas4+=1
	label.text = str(student.puntos["level4"])+"/20   ronda: "+str(Singleton.rondas4)
	# Creación de los botones
	var buttonMenor = Button.new()
	buttonMenor.text = "< Menor"
	buttonMenor.rect_min_size = Vector2(90, 50)
	buttonMenor.rect_position = Vector2(330, 600)
	add_child(buttonMenor)

	var buttonIgual = Button.new()
	buttonIgual.text = "= Igual"
	buttonIgual.rect_min_size = Vector2(90, 50)
	buttonIgual.rect_position = Vector2(570, 600)
	add_child(buttonIgual)

	var buttonMayor = Button.new()
	buttonMayor.text = "> Mayor"
	buttonMayor.rect_min_size = Vector2(90, 50)
	buttonMayor.rect_position = Vector2(800, 600)
	add_child(buttonMayor)

	# Conectamos las señales de los botones
	buttonMenor.connect("pressed", self, "_on_button_menor_pressed")
	buttonIgual.connect("pressed", self, "_on_button_igual_pressed")
	buttonMayor.connect("pressed", self, "_on_button_mayor_pressed")
	var imagenMayor = load("res://recursos/mayorq.jpg")
	var imagenMenor = load("res://recursos/menorq.jpg")
	var imagenIgual = load("res://recursos/igualq.jpg")
	buttonMayor.icon = imagenMayor
	buttonMenor.icon = imagenMenor
	buttonIgual.icon = imagenIgual


	# Generamos los números aleatorios
	generateNumbers()

func generateNumbers():
	# Generamos dos números aleatorios
	number1 = rand_range(1, 9)
	number2 = rand_range(1, 9)
	numeroIzqButton.text = str(number1)
	numeroDerButton.text = str(number2)

func obtenerImagenParaNumero(numero: int) -> Texture:
	var imagenes: Dictionary = {
		1: imagenNumero1,
		2: imagenNumero2,
		3: imagenNumero3,
		4: imagenNumero4,
		5: imagenNumero5,
		6: imagenNumero6,
		7: imagenNumero7,
		8: imagenNumero8,
		9: imagenNumero9,
		
	}
	
	return imagenes.get(numero, null)

func _on_button_menor_pressed():
	if number1 < number2:
		Singleton.showSceneWithDelay("res://spoo_world/world/modal/bien.tscn","res://spoo_world/world/levels/level4/level4.tscn")
	else:
		Singleton.showSceneWithDelay("res://spoo_world/world/modal/mal.tscn","res://spoo_world/world/levels/level4/level4.tscn")
	generateNumbers()

func _on_button_igual_pressed():
	if number1 ==number2:
		if Singleton.rondas4<=20 and !student.completados["level4"]:
			student.puntos["level4"] +=2
		Singleton.showSceneWithDelay("res://spoo_world/world/modal/bien.tscn","res://spoo_world/world/levels/level4/level4.tscn")
	else:
		if Singleton.rondas4<=20 and !student.completados["level4"]:
			student.puntos["level4"] +=0
		Singleton.rondas4-=1
		Singleton.showSceneWithDelay("res://spoo_world/world/modal/mal.tscn","res://spoo_world/world/levels/level4/level4.tscn")
	generateNumbers()

func _on_button_mayor_pressed():
	if number1 > number2:
		if Singleton.rondas4<=20 and !student.completados["level4"]:
			student.puntos["level4"] +=2
		Singleton.showSceneWithDelay("res://spoo_world/world/modal/bien.tscn","res://spoo_world/world/levels/level4/level4.tscn")
	else:
		if Singleton.rondas4<=20 and !student.completados["level4"]:
			student.puntos["level4"] +=0
		Singleton.rondas4-=1
		Singleton.showSceneWithDelay("res://spoo_world/world/modal/mal.tscn","res://spoo_world/world/levels/level4/level4.tscn")
	generateNumbers()

func _on_Button_pressed():
	get_tree().change_scene("res://spoo_world/world/levels/level_main.tscn")

func _on_TButton_Music_pressed():
	var audioPlayer = get_node("AudioFondo")
	if audioPlayer.playing:
		audioPlayer.stop()
	else:
		audioPlayer.play(audioPlayer.get_playback_position())
