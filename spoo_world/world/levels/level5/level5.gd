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
var moneda1=0
var moneda2=0
var bandera_nivel =false
func _ready():
	Singleton.stay = 5
	student = Singleton.student
	Singleton.rondas5+=1
	iteration = Singleton.rondas5
	points=student.puntos["level5"]
	mostrar_monedas()
	
	generar_valores_cuadros()
	for i in range (5):
		get_tree().get_root().get_node("level5/bloque_r"+str(i+1)+"/Label").text = str(valores[i+1])
		
	#get_tree().get_root().get_node("level5/points/label_point").text = str(points) + "/15"
	get_tree().get_root().get_node("level5/b0/Label").text = str(valores[0])
	get_tree().get_root().get_node("level5/b1/Label").text =str(valores[6])
	
	$label_point.text = str(student.puntos["level5"])+"/20  ronda = "+str(iteration)
	
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
	
	if iteration ==1 or iteration ==2:
		var ubicaciones= generarNumerosAleatorios(1, 5)
		for i in range(7):
			if ubicaciones[ceros]==i and (i>0 and i<6):
				valores[i] = 0
				ceros+=1
				
			else:
				valores[i] = i+1
			
		
	elif iteration ==3 or iteration ==4:
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
	
	elif iteration ==5 or iteration ==6:
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
			
	elif iteration ==7 or iteration ==8:
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
			
	elif iteration ==9 or iteration ==10:
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
		pass
		#var puntos_oficial = int((15*points)/20)
		#if !student.completados["level5"]:
		#	student.puntos["level5"] +=puntos_oficial
		#var new_scene_path = "res://spoo_world/world/levels/level_main.tscn"  # Ruta a la nueva escena
		#get_tree().change_scene(new_scene_path)

#mostrar coins
func mostrar_monedas():
	var rng = RandomNumberGenerator.new()
	rng.randomize()
	var numero_aleatorio1 = rng.randi_range(1, 5)
	var numero_aleatorio2 = rng.randi_range(1, 5)
	
	while numero_aleatorio1==numero_aleatorio2:
		numero_aleatorio2= rng.randi_range(1, 5)
	
	if numero_aleatorio1 == 1 or numero_aleatorio2==1:
		$moneda1.visible=true
		
	if numero_aleatorio1 == 2 or numero_aleatorio2==2:
		$moneda2.visible=true
		
	if numero_aleatorio1 == 3 or numero_aleatorio2==3:
		$moneda3.visible=true
		
	if numero_aleatorio1 == 4 or numero_aleatorio2==4:
		$moneda4.visible=true
	
	if numero_aleatorio1 == 5 or numero_aleatorio2==5:
		$moneda5.visible=true
	
	moneda1=numero_aleatorio1
	moneda2=numero_aleatorio2
#reiniciar el juego
func _on_limite_body_entered(body):
	pass

func _on_abajo_body_exited(body):
	pass
	
func _on_back_pressed():
	var new_scene_path = "res://spoo_world/world/levels/level_main.tscn"  # Ruta a la nueva escena
	get_tree().change_scene(new_scene_path)
	Singleton.rondas5 -=1


func _on_TButton_Music_pressed():
	var audioPlayer = get_node("AudioFondo") 
	if audioPlayer.playing:
		audioPlayer.stop()
	else:
		audioPlayer.play(audioPlayer.get_playback_position())


#para las monedas
func _on_moneda1_body_entered(body):
	if moneda1==1 or moneda2 ==1:
		points += 1
		$label_point.text = str(points)+"/20  ronda = "+str(iteration)
		$moneda1.visible = false

func _on_moneda2_body_entered(body):
	if moneda1==2 or moneda2 ==2:
		points += 1
		$label_point.text = str(points)+"/20  ronda = "+str(iteration)
		$moneda2.visible = false


func _on_moneda3_body_entered(body):
	if moneda1==3 or moneda2 ==3:
		points += 1
		$label_point.text = str(points)+"/20  ronda = "+str(iteration)
		$moneda3.visible = false


func _on_moneda4_body_entered(body):
	if moneda1==4 or moneda2 ==4:
		points += 1
		$label_point.text = str(points)+"/20  ronda = "+str(iteration)
		$moneda4.visible = false


func _on_moneda5_body_entered(body):
	if moneda1==5 or moneda2 ==5:
		points += 1
		$label_point.text = str(points)+"/20  ronda = "+str(iteration)
		$moneda5.visible = false	

#para el conteo de los botones
func _on_b_b1_pressed():
	if(valores[1]>=valores[6]):
		valores[1]=valores[0]
		get_tree().get_root().get_node("level5/bloque_r1/Label").text = str(valores[1])
	
	else:
		valores[1] +=1
		get_tree().get_root().get_node("level5/bloque_r1/Label").text = str(valores[1])

func _on_b_b2_pressed():
	if(valores[2]>=valores[6]):
		valores[2]=valores[0]
		get_tree().get_root().get_node("level5/bloque_r2/Label").text = str(valores[2])
	
	else:
		valores[2] +=1
		get_tree().get_root().get_node("level5/bloque_r2/Label").text = str(valores[2])

func _on_b_b3_pressed():
	if(valores[3]>=valores[6]):
		valores[3]=valores[0]
		get_tree().get_root().get_node("level5/bloque_r3/Label").text = str(valores[3])
	
	else:
		valores[3] +=1
		get_tree().get_root().get_node("level5/bloque_r3/Label").text = str(valores[3])

func _on_b_b4_pressed():
	if(valores[4]>=valores[6]):
		valores[4]=valores[0]
		get_tree().get_root().get_node("level5/bloque_r4/Label").text = str(valores[4])
	
	else:
		valores[4] +=1
		get_tree().get_root().get_node("level5/bloque_r4/Label").text = str(valores[4])

func _on_b_b5_pressed():
	if(valores[5]>=valores[6]):
		valores[5]=valores[0]
		get_tree().get_root().get_node("level5/bloque_r5/Label").text = str(valores[5])
	
	else:
		valores[5] +=1
		get_tree().get_root().get_node("level5/bloque_r5/Label").text = str(valores[5])


func _on_area_b1_body_entered(body):
	var numero1  = int($b0/Label.text)
	var numero2 = int($bloque_r1/Label.text)
	
	if numero2 == numero1+1:
		#Singleton.showSceneWithDelay("res://spoo_world/world/modal/bien.tscn","res://spoo_world/world/levels/level5/level5.tscn")
		print("esta bien")
	else:
		$bloque_r1/bloque_s.collision_layer=0
		$bloque_r1/bloque_s.collision_mask=0
		$Timer.stop()
		Singleton.showSceneWithDelay("res://spoo_world/world/modal/mal.tscn","res://spoo_world/world/levels/level5/level5.tscn")
		Singleton.rondas5 -=1

func _on_area_b2_body_entered(body):
	var numero1  = int($bloque_r1/Label.text)
	var numero2 = int($bloque_r2/Label.text)
	
	if numero2 == numero1+1:
		#Singleton.showSceneWithDelay("res://spoo_world/world/modal/bien.tscn","res://spoo_world/world/levels/level5/level5.tscn")
		print("esta bien")
	else:
		$bloque_r2/bloque_s.collision_layer=0
		$bloque_r2/bloque_s.collision_mask=0
		$Timer.stop()
		Singleton.showSceneWithDelay("res://spoo_world/world/modal/mal.tscn","res://spoo_world/world/levels/level5/level5.tscn")
		Singleton.rondas5 -=1

func _on_area_b3_body_entered(body):
	var numero1  = int($bloque_r2/Label.text)
	var numero2 = int($bloque_r3/Label.text)
	
	if numero2 == numero1+1:
		#Singleton.showSceneWithDelay("res://spoo_world/world/modal/bien.tscn","res://spoo_world/world/levels/level5/level5.tscn")
		print("esta bien")
	else:
		$bloque_r3/bloque_s.collision_layer=0
		$bloque_r3/bloque_s.collision_mask=0
		$Timer.stop()
		Singleton.showSceneWithDelay("res://spoo_world/world/modal/mal.tscn","res://spoo_world/world/levels/level5/level5.tscn")
		Singleton.rondas5 -=1

func _on_area_b4_body_entered(body):
	var numero1  = int($bloque_r3/Label.text)
	var numero2 = int($bloque_r4/Label.text)
	
	if numero2 == numero1+1:
		#Singleton.showSceneWithDelay("res://spoo_world/world/modal/bien.tscn","res://spoo_world/world/levels/level5/level5.tscn")
		print("esta bien")
	else:
		$bloque_r4/bloque_s.collision_layer=0
		$bloque_r4/bloque_s.collision_mask=0
		$Timer.stop()
		Singleton.showSceneWithDelay("res://spoo_world/world/modal/mal.tscn","res://spoo_world/world/levels/level5/level5.tscn")
		Singleton.rondas5 -=1



func _on_area_b5_body_entered(body):
	var numero1  = int($bloque_r4/Label.text)
	var numero2 = int($bloque_r5/Label.text)
	
	if numero2 == numero1+1:
		#Singleton.showSceneWithDelay("res://spoo_world/world/modal/bien.tscn","res://spoo_world/world/levels/level5/level5.tscn")
		print("esta bien")
	else:
		$bloque_r5/bloque_s.collision_layer=0
		$bloque_r5/bloque_s.collision_mask=0
		$Timer.stop()		
		Singleton.showSceneWithDelay("res://spoo_world/world/modal/mal.tscn","res://spoo_world/world/levels/level5/level5.tscn")



func _on_borde_v_body_entered(body):
	student.puntos["level5"] =points
	Singleton.showSceneWithDelay("res://spoo_world/world/modal/bien.tscn","res://spoo_world/world/levels/level5/level5.tscn")
