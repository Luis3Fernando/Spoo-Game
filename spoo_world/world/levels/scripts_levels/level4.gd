extends Node2D
# Variables
var numeroIzqLabel: Label
var numeroDerLabel: Label
var Mensaje: Label
var number1: int
var number2: int

var student

func _ready():
	# Creamos los labels para mostrar los números
	numeroIzqLabel = Label.new()
	numeroIzqLabel.set_align(Label.ALIGN_CENTER)
	numeroIzqLabel.set_valign(Label.VALIGN_CENTER)
	numeroIzqLabel.set_size(Vector2(100, 100))
	numeroIzqLabel.set_anchor(MARGIN_TOP, 0.5)
	numeroIzqLabel.set_anchor(MARGIN_BOTTOM, 0.5)
	numeroIzqLabel.set_anchor(MARGIN_LEFT, 0.5)
	numeroIzqLabel.set_anchor(MARGIN_RIGHT, 0.5)
	#posicion del label NumeroIzq
	numeroIzqLabel.rect_position = Vector2(100, 530)
	#Tamaño de las letras
	
	add_child(numeroIzqLabel)
	
	numeroDerLabel = Label.new()
	numeroDerLabel.set_align(Label.ALIGN_CENTER)
	numeroDerLabel.set_valign(Label.VALIGN_CENTER)
	numeroDerLabel.set_size(Vector2(100, 50))
	numeroDerLabel.set_anchor(MARGIN_TOP, 0.5)
	numeroDerLabel.set_anchor(MARGIN_BOTTOM, 0.5)
	numeroDerLabel.set_anchor(MARGIN_LEFT, 0.5)
	numeroDerLabel.set_anchor(MARGIN_RIGHT, 0.5)
	#posicion del label NumeroIzq
	numeroDerLabel.rect_position = Vector2(1050, 557)
	add_child(numeroDerLabel)
	
	# Creacion de los botonoes
	var buttonMenor = Button.new()
	buttonMenor.text = "< Menor"
	buttonMenor.rect_min_size = Vector2(100, 50)
	buttonMenor.rect_position = Vector2(450, 650)
	add_child(buttonMenor)
	
	var buttonIgual = Button.new()
	buttonIgual.text = "= Igual"
	buttonIgual.rect_min_size = Vector2(100, 50)
	buttonIgual.rect_position = Vector2(570, 650)
	add_child(buttonIgual)
	
	var buttonMayor = Button.new()
	buttonMayor.text = "> Mayor"
	buttonMayor.rect_min_size = Vector2(100, 50)
	buttonMayor.rect_position = Vector2(690, 650)
	add_child(buttonMayor)
	
	# Conectamos las señales de los botones
	buttonMenor.connect("pressed", self, "_on_button_menor_pressed")
	buttonIgual.connect("pressed", self, "_on_button_igual_pressed")
	buttonMayor.connect("pressed", self, "_on_button_mayor_pressed")
	
	# Generamos los números aleatorios
	generateNumbers()

func generateNumbers():
	# Generamos dos números aleatorios
	number1 = rand_range(1, 9)
	number2 = rand_range(1, 9)
	
	# Mostramos los números en los labels
	numeroIzqLabel.text = str(number1)
	numeroDerLabel.text = str(number2)

func _on_button_menor_pressed():
	if number1 < number2:
		#Creamos la variable mensaje
		#Mensaje = Label.new()
		#Mensaje.set_align(Label.ALIGN_CENTER)
		#Mensaje.set_valign(Label.VALIGN_CENTER)
		#Mensaje.set_size(Vector2(100, 100))
		#Mensaje.set_anchor(MARGIN_TOP, 0.5)
		#Mensaje.set_anchor(MARGIN_BOTTOM, 0.5)
		#Mensaje.set_anchor(MARGIN_LEFT, 0.5)
		#Mensaje.set_anchor(MARGIN_RIGHT, 0.5)
		#posicion del mensaje
		#Mensaje.rect_position = Vector2(10, 100)
		print("¡Correcto! " + str(number1) + " es menor que " + str(number2))
	else:
		#Creamos la variable mensaje
		#Mensaje = Label.new()
		#Mensaje.set_align(Label.ALIGN_CENTER)
		#Mensaje.set_valign(Label.VALIGN_CENTER)
		#Mensaje.set_size(Vector2(100, 100))
		#Mensaje.set_anchor(MARGIN_TOP, 0.5)
		#Mensaje.set_anchor(MARGIN_BOTTOM, 0.5)
		#Mensaje.set_anchor(MARGIN_LEFT, 0.5)
		#Mensaje.set_anchor(MARGIN_RIGHT, 0.5)
		#posicion del mensaje
		#Mensaje.rect_position = Vector2(10, 100)
		print("¡Incorrecto! " + str(number1) + " no es menor que " + str(number2))
	generateNumbers()

func _on_button_igual_pressed():
	if number1 == number2:
		#Creamos la variable mensaje
		#Mensaje = Label.new()
		#Mensaje.set_align(Label.ALIGN_CENTER)
		#Mensaje.set_valign(Label.VALIGN_CENTER)
		#Mensaje.set_size(Vector2(100, 100))
		#Mensaje.set_anchor(MARGIN_TOP, 0.5)
		#Mensaje.set_anchor(MARGIN_BOTTOM, 0.5)
		#Mensaje.set_anchor(MARGIN_LEFT, 0.5)
		#Mensaje.set_anchor(MARGIN_RIGHT, 0.5)
		#posicion del mensaje
		#Mensaje.rect_position = Vector2(10, 100)
		print("¡Correcto! " + str(number1) + " es igual a " + str(number2))
	else:
		#Creamos la variable mensaje
		#Mensaje = Label.new()
		#Mensaje.set_align(Label.ALIGN_CENTER)
		#Mensaje.set_valign(Label.VALIGN_CENTER)
		#Mensaje.set_size(Vector2(100, 100))
		#Mensaje.set_anchor(MARGIN_TOP, 0.5)
		#Mensaje.set_anchor(MARGIN_BOTTOM, 0.5)
		#Mensaje.set_anchor(MARGIN_LEFT, 0.5)
		#Mensaje.set_anchor(MARGIN_RIGHT, 0.5)
		#posicion del mensaje
		#Mensaje.rect_position = Vector2(10, 100)
		print("¡Incorrecto! " + str(number1) + " no es igual a " + str(number2))
	generateNumbers()

func _on_button_mayor_pressed():
	if number1 > number2:
		#Creamos la variable mensaje
		#Mensaje = Label.new()
		#Mensaje.set_align(Label.ALIGN_CENTER)
		#Mensaje.set_valign(Label.VALIGN_CENTER)
		#Mensaje.set_size(Vector2(100, 100))
		#Mensaje.set_anchor(MARGIN_TOP, 0.5)
		#Mensaje.set_anchor(MARGIN_BOTTOM, 0.5)
		#Mensaje.set_anchor(MARGIN_LEFT, 0.5)
		#Mensaje.set_anchor(MARGIN_RIGHT, 0.5)
		#posicion del mensaje
		#Mensaje.rect_position = Vector2(10, 100)
		print("¡Correcto! " + str(number1) + " es mayor que " + str(number2))
	else:
		#Creamos la variable mensaje
		#Mensaje = Label.new()
		#Mensaje.set_align(Label.ALIGN_CENTER)
		#Mensaje.set_valign(Label.VALIGN_CENTER)
		#Mensaje.set_size(Vector2(100, 100))
		#Mensaje.set_anchor(MARGIN_TOP, 0.5)
		#Mensaje.set_anchor(MARGIN_BOTTOM, 0.5)
		#Mensaje.set_anchor(MARGIN_LEFT, 0.5)
		#Mensaje.set_anchor(MARGIN_RIGHT, 0.5)
		#posicion del mensaje
		#Mensaje.rect_position = Vector2(10, 100)
		print("¡Incorrecto! " + str(number1) + " no es mayor que " + str(number2))
	generateNumbers()


func _on_Button_pressed():
	var new_scene_path = "res://spoo_world/world/levels/level_main.tscn"  # Ruta a la nueva escena
	get_tree().change_scene(new_scene_path)


func _on_TButton_Music_pressed():
	var audioPlayer = get_node("AudioFondo") 
	if audioPlayer.playing:
		audioPlayer.stop()
	else:
		audioPlayer.play(audioPlayer.get_playback_position())
