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


onready var aveDer1 = $aveIzq_1
onready var aveDer2 = $aveIzq_2
onready var aveDer3 = $aveIzq_3
onready var aveDer4 = $aveIzq_4
onready var aveDer5 = $aveIzq_5
onready var aveDer6 = $aveIzq_6
onready var aveDer7 = $aveIzq_7
onready var aveDer8 = $aveIzq_8
onready var aveDer9 = $aveIzq_9

onready var aveIzq1 = $aveDer_1
onready var aveIzq2 = $aveDer_2
onready var aveIzq3 = $aveDer_3
onready var aveIzq4 = $aveDer_4
onready var aveIzq5 = $aveDer_5
onready var aveIzq6 = $aveDer_6
onready var aveIzq7 = $aveDer_7
onready var aveIzq8 = $aveDer_8
onready var aveIzq9 = $aveDer_9

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
	
	mostrar_aves_der(number2)
	mostrar_aves_izq(number1)

func mostrar_aves_der(cantidad: int):

	match cantidad:
		1: 
			aveDer1.visible = true
			
		2:
			aveDer1.visible = true
			aveDer2.visible = true
		3:
			aveDer1.visible = true
			aveDer2.visible = true
			aveDer3.visible = true
		4:
			aveDer1.visible = true
			aveDer2.visible = true
			aveDer3.visible = true
			aveDer4.visible = true
		5:
			aveDer1.visible = true
			aveDer2.visible = true
			aveDer3.visible = true
			aveDer4.visible = true
			aveDer5.visible = true
		6: 
			aveDer1.visible = true
			aveDer2.visible = true
			aveDer3.visible = true
			aveDer4.visible = true
			aveDer5.visible = true
			aveDer6.visible = true
		7:
			aveDer1.visible = true
			aveDer2.visible = true
			aveDer3.visible = true
			aveDer4.visible = true
			aveDer5.visible = true
			aveDer6.visible = true
			aveDer7.visible = true
		8:
			aveDer1.visible = true
			aveDer2.visible = true
			aveDer3.visible = true
			aveDer4.visible = true
			aveDer5.visible = true
			aveDer6.visible = true
			aveDer7.visible = true
			aveDer8.visible = true
			
		9:
			aveDer1.visible = true
			aveDer2.visible = true
			aveDer3.visible = true
			aveDer4.visible = true
			aveDer5.visible = true
			aveDer6.visible = true
			aveDer7.visible = true
			aveDer8.visible = true
			aveDer9.visible = true
		_:
			print("Cantidad no reconocida")

func mostrar_aves_izq(cantidad: int):

	match cantidad:
		1: 
			aveIzq1.visible = true
			
		2:
			aveIzq1.visible = true
			aveIzq2.visible = true
		3:
			aveIzq1.visible = true
			aveIzq2.visible = true
			aveIzq3.visible = true
		4:
			aveIzq1.visible = true
			aveIzq2.visible = true
			aveIzq3.visible = true
			aveIzq4.visible = true
		5:
			aveIzq1.visible = true
			aveIzq2.visible = true
			aveIzq3.visible = true
			aveIzq4.visible = true
			aveIzq5.visible = true
		6: 
			aveIzq1.visible = true
			aveIzq2.visible = true
			aveIzq3.visible = true
			aveIzq4.visible = true
			aveIzq5.visible = true
			aveIzq6.visible = true
		7:
			aveIzq1.visible = true
			aveIzq2.visible = true
			aveIzq3.visible = true
			aveIzq4.visible = true
			aveIzq5.visible = true
			aveIzq6.visible = true
			aveIzq7.visible = true
		8:
			aveIzq1.visible = true
			aveIzq2.visible = true
			aveIzq3.visible = true
			aveIzq4.visible = true
			aveIzq5.visible = true
			aveIzq6.visible = true
			aveIzq7.visible = true
			aveIzq8.visible = true
			
		9:
			aveIzq1.visible = true
			aveIzq2.visible = true
			aveIzq3.visible = true
			aveIzq4.visible = true
			aveIzq5.visible = true
			aveIzq6.visible = true
			aveIzq7.visible = true
			aveIzq8.visible = true
			aveIzq9.visible = true
		_:
			print("Cantidad no reconocida")


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
