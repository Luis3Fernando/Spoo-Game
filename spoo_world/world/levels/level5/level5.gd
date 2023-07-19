extends Node2D

var points=0

var student

var count1 = 0
var count2 = 0
var count3 = 0
var count4 = 0
var count5 = 0
var count6 = 0
var count7 = 0

var iteration = 1
var valores = [count1, count2, count3, count4, count5, count6, count7, 0]

func _ready():
	generar_valores_cuadros()
	print(valores)
	for i in range (7):
		get_tree().get_root().get_node("level5/b"+str(i+1)+"/Button"+str(i+1)+"/Label").text = str(valores[i])
		
	get_tree().get_root().get_node("level5/points/label_point").text = str(points) + "/15"
	
	
func generarNumerosAleatorios(menor, mayor):
	var numeros = []
	
	while numeros.size() < 3:
		var numero =  randi() %(mayor - menor + 1) + menor
		
		if not numeros.has(numero):
			numeros.append(numero)
	
	numeros.append(100)
	numeros.sort()
	print(numeros)
	return numeros

func generar_valores_cuadros():
	var ceros=0
	
	if iteration ==1:
		var ubicaciones= generarNumerosAleatorios(1, 5)
		for i in range(7):
			if ubicaciones[ceros]==i and (i>0 and i<6):
				valores[i] = 0
				ceros+=1
				
			else:
				valores[i] = i+1
			
		
	elif iteration ==2:
		var ubicaciones= generarNumerosAleatorios(9, 13)
		var j=0
		for i in range(8,15):
			if ubicaciones[ceros]==i and (i>8 and i<14):
				valores[j] = 0
				ceros+=1
				j+=1
				
			else:
				valores[j] = i
				j+=1
	
	elif iteration ==3:
		var ubicaciones= generarNumerosAleatorios(12, 17)
		var j=0
		for i in range(11,18):
			if ubicaciones[ceros]==i and (i>11 and i<18):
				valores[j] = 0
				ceros+=1
				j+=1
				
			else:
				valores[j] = i
				j+=1
			
	elif iteration ==4:
		var ubicaciones= generarNumerosAleatorios(19, 24)
		var j=0
		for i in range(18,25):
			if ubicaciones[ceros]==i and (i>18 and i<25):
				valores[j] = 0
				ceros+=1
				j+=1
				
			else:
				valores[j] = i
				j+=1
			
	elif iteration ==5:
		var ubicaciones= generarNumerosAleatorios(25, 30)
		var j=0
		for i in range(24,31):
			if ubicaciones[ceros]==i and (i>24 and i<31):
				valores[j] = 0
				ceros+=1
				j+=1
				
			else:
				valores[j] = i
				j+=1
	else:
		print("ganaste")
		var new_scene_path = "res://spoo_world/world/levels/level_main.tscn"  # Ruta a la nueva escena
		get_tree().change_scene(new_scene_path)

#reiniciar el juego
func _on_limite_body_entered(body):
	$spoo.reset_game()
	$coin1.visible = true
	$coin2.visible = true
	$coin3.visible = true
	$b1.reset_position()
	$b2.reset_position()
	$b3.reset_position()
	$b4.reset_position()
	$b5.reset_position()
	$b6.reset_position()
	$b7.reset_position()
	iteration+=1
	_ready()

func _on_abajo_body_exited(body):
	$spoo.reset_game()
	$coin1.visible = true
	$coin2.visible = true
	$coin3.visible = true
	$b1.reset_position()
	$b2.reset_position()
	$b3.reset_position()
	$b4.reset_position()
	$b5.reset_position()
	$b6.reset_position()
	$b7.reset_position()
	iteration+=1
	_ready()
	

#para las monedas
func _on_coin1_body_entered(body):
	points += 1
	get_tree().get_root().get_node("level5/points/label_point").text = str(points) + "/15"
	$coin1.visible = false


func _on_coin2_body_entered(body):
	points += 1
	get_tree().get_root().get_node("level5/points/label_point").text = str(points) + "/15"
	$coin2.visible = false


func _on_coin3_body_entered(body):
	points += 1
	get_tree().get_root().get_node("level5/points/label_point").text = str(points) + "/15"
	$coin3.visible = false

#para el conteo de los botones
func _on_Button1_pressed():
	if(valores[0]>=30):
		valores[0] =0
		get_tree().get_root().get_node("level5/b1/Button1/Label").text = str(valores[0])
		valores[0] +=1
	
	else:
		valores[0] +=1
		get_tree().get_root().get_node("level5/b1/Button1/Label").text = str(valores[0])


func _on_Button2_pressed():
	if(valores[1]>=30):
		valores[1]=0
		get_tree().get_root().get_node("level5/b2/Button2/Label").text = str(valores[1])
		valores[1] +=1
	
	else:
		valores[1] +=1
		get_tree().get_root().get_node("level5/b2/Button2/Label").text = str(valores[1])


func _on_Button3_pressed():
	if(valores[2]>=30):
		valores[2]=0
		get_tree().get_root().get_node("level5/b3/Button3/Label").text = str(valores[2])
		valores[2] +=1
	
	else:
		valores[2] +=1
		get_tree().get_root().get_node("level5/b3/Button3/Label").text = str(valores[2])


func _on_Button4_pressed():
	if(valores[3]>=30):
		valores[3]=0
		get_tree().get_root().get_node("level5/b4/Button4/Label").text = str(valores[3])
		valores[3] +=1
	
	else:
		valores[3] +=1
		get_tree().get_root().get_node("level5/b4/Button4/Label").text = str(valores[3])


func _on_Button5_pressed():
	if(valores[4]>=30):
		valores[4]=0
		get_tree().get_root().get_node("level5/b5/Button5/Label").text = str(valores[4])
		valores[4] +=1
	
	else:
		valores[4] +=1
		get_tree().get_root().get_node("level5/b5/Button5/Label").text = str(valores[4])


func _on_Button6_pressed():
	if(valores[5]>=30):
		valores[5]=0
		get_tree().get_root().get_node("level5/b6/Button6/Label").text = str(valores[5])
		valores[5] +=1
	
	else:
		valores[5] +=1
		get_tree().get_root().get_node("level5/b6/Button6/Label").text = str(valores[5])


func _on_Button7_pressed():
	if(valores[6]>=30):
		valores[6]=0
		get_tree().get_root().get_node("level5/b7/Button7/Label").text = str(valores[6])
		valores[6] +=1
	
	else:
		valores[6] +=1
		get_tree().get_root().get_node("level5/b7/Button7/Label").text = str(valores[6])


func _on_Area2D_b1_body_entered(body):
	pass

func _on_Area2D_b2_body_entered(body):
	var abajo = int(get_tree().get_root().get_node("level5/b1/Button1/Label").text)
	
	if !(int(get_tree().get_root().get_node("level5/b2/Button2/Label").text) == abajo+1):
		$b2.caer()
		
func _on_Area2D_b3_body_entered(body):
	var abajo = int(get_tree().get_root().get_node("level5/b1/Button1/Label").text)
	
	if !(int(get_tree().get_root().get_node("level5/b3/Button3/Label").text) == abajo+2):
		$b3.caer()

func _on_Area2D_b4_body_entered(body):
	var abajo = int(get_tree().get_root().get_node("level5/b1/Button1/Label").text)
	
	if !(int(get_tree().get_root().get_node("level5/b4/Button4/Label").text) == abajo+3):
		$b4.caer()

func _on_Area2D_b5_body_entered(body):
	var abajo = int(get_tree().get_root().get_node("level5/b1/Button1/Label").text)
	
	if !(int(get_tree().get_root().get_node("level5/b5/Button5/Label").text) == abajo+4):
		$b5.caer()

func _on_Area2D_b6_body_entered(body):
	var abajo = int(get_tree().get_root().get_node("level5/b1/Button1/Label").text)
	
	if !(int(get_tree().get_root().get_node("level5/b6/Button6/Label").text) == abajo+5):
		$b6.caer()
	
func _on_Area2D_b7_body_entered(body):
	pass


func _on_music_pressed():
	var audioPlayer = get_node("AudioFondo") 
	if audioPlayer.playing:
		audioPlayer.stop()
	else:
		audioPlayer.play()
	pass # Replace with function body.

func _on_back_pressed():
	var new_scene_path = "res://spoo_world/world/levels/level_main.tscn"  # Ruta a la nueva escena
	get_tree().change_scene(new_scene_path)
