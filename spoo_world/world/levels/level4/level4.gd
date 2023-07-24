extends Node2D

var student

var number1: int
var number2: int

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
onready var aveDe10 = $aveIzq_10
onready var aveDer11 = $aveIzq_11
onready var aveDer12= $aveIzq_12
onready var aveDer13 = $aveIzq_13
onready var aveDer14 = $aveIzq_14
onready var aveDer15 = $aveIzq_15
onready var aveDer16 = $aveIzq_16
onready var aveDer17 = $aveIzq_17
onready var aveDer18 = $aveIzq_18
onready var aveDer19 = $aveIzq_19
onready var aveDer20 = $aveIzq_20

onready var aveIzq1 = $aveDer_1
onready var aveIzq2 = $aveDer_2
onready var aveIzq3 = $aveDer_3
onready var aveIzq4 = $aveDer_4
onready var aveIzq5 = $aveDer_5
onready var aveIzq6 = $aveDer_6
onready var aveIzq7 = $aveDer_7
onready var aveIzq8 = $aveDer_8
onready var aveIzq9 = $aveDer_9
onready var aveIzq10 = $aveDer_10
onready var aveIzq11 = $aveDer_11
onready var aveIzq12 = $aveDer_12
onready var aveIzq13 = $aveDer_13
onready var aveIzq14 = $aveDer_14
onready var aveIzq15 = $aveDer_15
onready var aveIzq16 = $aveDer_16
onready var aveIzq17 = $aveDer_17
onready var aveIzq18 = $aveDer_18
onready var aveIzq19 = $aveDer_19
onready var aveIzq20 = $aveDer_20

func _ready():
	Singleton.stay = 4
	student = Singleton.student
	Singleton.rondas4+=1
	label.text = str(student.puntos["level4"])+"/20   ronda: "+str(Singleton.rondas4)

	# Generamos los números aleatorios
	generateNumbers()

func generateNumbers():
	# Generamos dos números aleatorios
	number1 = rand_range(1, 20)
	number2 = rand_range(1, 20)
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
			
		10:
			aveDer1.visible = true
			aveDer2.visible = true
			aveDer3.visible = true
			aveDer4.visible = true
			aveDer5.visible = true
			aveDer6.visible = true
			aveDer7.visible = true
			aveDer8.visible = true
			aveDer9.visible = true
			aveDe10.visible = true
			
		11:
			aveDer1.visible = true
			aveDer2.visible = true
			aveDer3.visible = true
			aveDer4.visible = true
			aveDer5.visible = true
			aveDer6.visible = true
			aveDer7.visible = true
			aveDer8.visible = true
			aveDer9.visible = true
			aveDe10.visible = true
			aveDer11.visible = true
			
		12:
			aveDer1.visible = true
			aveDer2.visible = true
			aveDer3.visible = true
			aveDer4.visible = true
			aveDer5.visible = true
			aveDer6.visible = true
			aveDer7.visible = true
			aveDer8.visible = true
			aveDer9.visible = true
			aveDe10.visible = true
			aveDer11.visible = true
			aveDer12.visible = true
			
		13:
			aveDer1.visible = true
			aveDer2.visible = true
			aveDer3.visible = true
			aveDer4.visible = true
			aveDer5.visible = true
			aveDer6.visible = true
			aveDer7.visible = true
			aveDer8.visible = true
			aveDer9.visible = true
			aveDe10.visible = true
			aveDer11.visible = true
			aveDer12.visible = true
			aveDer13.visible = true
			
		14:
			aveDer1.visible = true
			aveDer2.visible = true
			aveDer3.visible = true
			aveDer4.visible = true
			aveDer5.visible = true
			aveDer6.visible = true
			aveDer7.visible = true
			aveDer8.visible = true
			aveDer9.visible = true
			aveDe10.visible = true
			aveDer11.visible = true
			aveDer12.visible = true
			aveDer13.visible = true
			aveDer14.visible = true
			
		15:
			aveDer1.visible = true
			aveDer2.visible = true
			aveDer3.visible = true
			aveDer4.visible = true
			aveDer5.visible = true
			aveDer6.visible = true
			aveDer7.visible = true
			aveDer8.visible = true
			aveDer9.visible = true
			aveDe10.visible = true
			aveDer11.visible = true
			aveDer12.visible = true
			aveDer13.visible = true
			aveDer14.visible = true
			aveDer15.visible = true
		
		16:
			aveDer1.visible = true
			aveDer2.visible = true
			aveDer3.visible = true
			aveDer4.visible = true
			aveDer5.visible = true
			aveDer6.visible = true
			aveDer7.visible = true
			aveDer8.visible = true
			aveDer9.visible = true
			aveDe10.visible = true
			aveDer11.visible = true
			aveDer12.visible = true
			aveDer13.visible = true
			aveDer14.visible = true
			aveDer15.visible = true
			aveDer16.visible = true
			
		17:
			aveDer1.visible = true
			aveDer2.visible = true
			aveDer3.visible = true
			aveDer4.visible = true
			aveDer5.visible = true
			aveDer6.visible = true
			aveDer7.visible = true
			aveDer8.visible = true
			aveDer9.visible = true
			aveDe10.visible = true
			aveDer11.visible = true
			aveDer12.visible = true
			aveDer13.visible = true
			aveDer14.visible = true
			aveDer15.visible = true
			aveDer16.visible = true
			aveDer17.visible = true
			
		18:
			aveDer1.visible = true
			aveDer2.visible = true
			aveDer3.visible = true
			aveDer4.visible = true
			aveDer5.visible = true
			aveDer6.visible = true
			aveDer7.visible = true
			aveDer8.visible = true
			aveDer9.visible = true
			aveDe10.visible = true
			aveDer11.visible = true
			aveDer12.visible = true
			aveDer13.visible = true
			aveDer14.visible = true
			aveDer15.visible = true
			aveDer16.visible = true
			aveDer17.visible = true
			aveDer18.visible = true
			
		19:
			aveDer1.visible = true
			aveDer2.visible = true
			aveDer3.visible = true
			aveDer4.visible = true
			aveDer5.visible = true
			aveDer6.visible = true
			aveDer7.visible = true
			aveDer8.visible = true
			aveDer9.visible = true
			aveDe10.visible = true
			aveDer11.visible = true
			aveDer12.visible = true
			aveDer13.visible = true
			aveDer14.visible = true
			aveDer15.visible = true
			aveDer16.visible = true
			aveDer17.visible = true
			aveDer18.visible = true
			aveDer19.visible = true
			
		20:
			aveDer1.visible = true
			aveDer2.visible = true
			aveDer3.visible = true
			aveDer4.visible = true
			aveDer5.visible = true
			aveDer6.visible = true
			aveDer7.visible = true
			aveDer8.visible = true
			aveDer9.visible = true
			aveDe10.visible = true
			aveDer11.visible = true
			aveDer12.visible = true
			aveDer13.visible = true
			aveDer14.visible = true
			aveDer15.visible = true
			aveDer16.visible = true
			aveDer17.visible = true
			aveDer18.visible = true
			aveDer19.visible = true
			aveDer20.visible = true
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
			
		10:
			aveIzq1.visible = true
			aveIzq2.visible = true
			aveIzq3.visible = true
			aveIzq4.visible = true
			aveIzq5.visible = true
			aveIzq6.visible = true
			aveIzq7.visible = true
			aveIzq8.visible = true
			aveIzq9.visible = true
			aveIzq10.visible = true
			
		11:
			aveIzq1.visible = true
			aveIzq2.visible = true
			aveIzq3.visible = true
			aveIzq4.visible = true
			aveIzq5.visible = true
			aveIzq6.visible = true
			aveIzq7.visible = true
			aveIzq8.visible = true
			aveIzq9.visible = true
			aveIzq10.visible = true
			aveIzq11.visible = true
			
		12:
			aveIzq1.visible = true
			aveIzq2.visible = true
			aveIzq3.visible = true
			aveIzq4.visible = true
			aveIzq5.visible = true
			aveIzq6.visible = true
			aveIzq7.visible = true
			aveIzq8.visible = true
			aveIzq9.visible = true
			aveIzq10.visible = true
			aveIzq11.visible = true
			aveIzq12.visible = true
			
		13:
			aveIzq1.visible = true
			aveIzq2.visible = true
			aveIzq3.visible = true
			aveIzq4.visible = true
			aveIzq5.visible = true
			aveIzq6.visible = true
			aveIzq7.visible = true
			aveIzq8.visible = true
			aveIzq9.visible = true
			aveIzq10.visible = true
			aveIzq11.visible = true
			aveIzq12.visible = true
			aveIzq13.visible = true
			
		14:
			aveIzq1.visible = true
			aveIzq2.visible = true
			aveIzq3.visible = true
			aveIzq4.visible = true
			aveIzq5.visible = true
			aveIzq6.visible = true
			aveIzq7.visible = true
			aveIzq8.visible = true
			aveIzq9.visible = true
			aveIzq10.visible = true
			aveIzq11.visible = true
			aveIzq12.visible = true
			aveIzq13.visible = true
			aveIzq14.visible = true
			
		15:
			aveIzq1.visible = true
			aveIzq2.visible = true
			aveIzq3.visible = true
			aveIzq4.visible = true
			aveIzq5.visible = true
			aveIzq6.visible = true
			aveIzq7.visible = true
			aveIzq8.visible = true
			aveIzq9.visible = true
			aveIzq10.visible = true
			aveIzq11.visible = true
			aveIzq12.visible = true
			aveIzq13.visible = true
			aveIzq14.visible = true
			aveIzq15.visible = true
		
		16:
			aveIzq1.visible = true
			aveIzq2.visible = true
			aveIzq3.visible = true
			aveIzq4.visible = true
			aveIzq5.visible = true
			aveIzq6.visible = true
			aveIzq7.visible = true
			aveIzq8.visible = true
			aveIzq9.visible = true
			aveIzq10.visible = true
			aveIzq11.visible = true
			aveIzq12.visible = true
			aveIzq13.visible = true
			aveIzq14.visible = true
			aveIzq15.visible = true
			aveIzq16.visible = true
			
		17:
			aveIzq1.visible = true
			aveIzq2.visible = true
			aveIzq3.visible = true
			aveIzq4.visible = true
			aveIzq5.visible = true
			aveIzq6.visible = true
			aveIzq7.visible = true
			aveIzq8.visible = true
			aveIzq9.visible = true
			aveIzq10.visible = true
			aveIzq11.visible = true
			aveIzq12.visible = true
			aveIzq13.visible = true
			aveIzq14.visible = true
			aveIzq15.visible = true
			aveIzq16.visible = true
			aveIzq17.visible = true
			
		18:
			aveIzq1.visible = true
			aveIzq2.visible = true
			aveIzq3.visible = true
			aveIzq4.visible = true
			aveIzq5.visible = true
			aveIzq6.visible = true
			aveIzq7.visible = true
			aveIzq8.visible = true
			aveIzq9.visible = true
			aveIzq10.visible = true
			aveIzq11.visible = true
			aveIzq12.visible = true
			aveIzq13.visible = true
			aveIzq14.visible = true
			aveIzq15.visible = true
			aveIzq16.visible = true
			aveIzq17.visible = true
			aveIzq18.visible = true
			
		19:
			aveIzq1.visible = true
			aveIzq2.visible = true
			aveIzq3.visible = true
			aveIzq4.visible = true
			aveIzq5.visible = true
			aveIzq6.visible = true
			aveIzq7.visible = true
			aveIzq8.visible = true
			aveIzq9.visible = true
			aveIzq10.visible = true
			aveIzq11.visible = true
			aveIzq12.visible = true
			aveIzq13.visible = true
			aveIzq14.visible = true
			aveIzq15.visible = true
			aveIzq16.visible = true
			aveIzq17.visible = true
			aveIzq18.visible = true
			aveIzq19.visible = true
			
		20:
			aveIzq1.visible = true
			aveIzq2.visible = true
			aveIzq3.visible = true
			aveIzq4.visible = true
			aveIzq5.visible = true
			aveIzq6.visible = true
			aveIzq7.visible = true
			aveIzq8.visible = true
			aveIzq9.visible = true
			aveIzq10.visible = true
			aveIzq11.visible = true
			aveIzq12.visible = true
			aveIzq13.visible = true
			aveIzq14.visible = true
			aveIzq15.visible = true
			aveIzq16.visible = true
			aveIzq17.visible = true
			aveIzq18.visible = true
			aveIzq19.visible = true
			aveIzq20.visible = true
		
		_:
			print("Cantidad no reconocida")

func _on_Button_pressed():
	get_tree().change_scene("res://spoo_world/world/levels/level_main.tscn")

func _on_TButton_Music_pressed():
	var audioPlayer = get_node("AudioFondo")
	if audioPlayer.playing:
		audioPlayer.stop()
	else:
		audioPlayer.play(audioPlayer.get_playback_position())


func _on_mayor_que_pressed():
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


func _on_menor_que_pressed():
	if number1 < number2:
		Singleton.showSceneWithDelay("res://spoo_world/world/modal/bien.tscn","res://spoo_world/world/levels/level4/level4.tscn")
	else:
		Singleton.showSceneWithDelay("res://spoo_world/world/modal/mal.tscn","res://spoo_world/world/levels/level4/level4.tscn")
	generateNumbers()


func _on_igual_pressed():
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
