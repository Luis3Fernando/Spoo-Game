extends Node2D

var count1 = 0
var count2 = 0
var count3 = 0
var count4 = 0
var count5 = 0
var count6 = 0
var count7 = 0

var valores = [count1, count2, count3, count4, count5, count5, count6, count7]

func _ready():
	generar_valores_cuadros()
	
	for i in range (7):
		get_tree().get_root().get_node("level5/BLock"+str(i+1)+"/Label").text = str(valores[i])
	
func generar_valores_cuadros():
	var repetidos = []
	var Array_ubicacion = []
	var Array_valores = [] 
	var j=4
	var n = 1
	for i in range(j):
		if n==1:
			var ubicacion = round(randi() % 4)
			var valor = round(randi() % 4)
			
			valores[ubicacion] = valor
			repetidos.append(ubicacion)
			Array_ubicacion.append(ubicacion)
			Array_valores.append(valor)
			n+=1
			print(i)
			print(valores)
				
		elif n==2:
			var ubicacion = round(rand_range(Array_ubicacion[0], Array_ubicacion[0]+3))
			var valor = round(rand_range(Array_valores[0], Array_valores[0]+3))
			if ubicacion in repetidos:
				j+=1
			else:
				valores[ubicacion] = valor
				repetidos.append(ubicacion)
				Array_ubicacion.append(ubicacion)
				Array_valores.append(valor)
				n+=1
				print(i)
				print(valores)
				
		elif n==3:
			var ubicacion = round(rand_range(Array_ubicacion[1], Array_ubicacion[1]+3))
			var valor = round(rand_range(Array_valores[1], Array_valores[1]+3))
			if ubicacion in repetidos:
				j+=1
			else:
				valores[ubicacion] = valor
				repetidos.append(ubicacion)
				Array_ubicacion.append(ubicacion)
				Array_valores.append(valor)
				n+=1
				print(i)
				print(valores)
		
		
func _on_BLock1_pressed():
	if(valores[0]>=9):
		valores[0] =0
		get_tree().get_root().get_node("level5/BLock1/Label").text = str(valores[0])
		valores[0] +=1
	
	else:
		valores[0] +=1
		get_tree().get_root().get_node("level5/BLock1/Label").text = str(valores[0])

func _on_BLock2_pressed():
	if(valores[1]>=9):
		valores[1]=0
		get_tree().get_root().get_node("level5/BLock2/Label").text = str(valores[1])
		valores[1] +=1
	
	else:
		valores[1] +=1
		get_tree().get_root().get_node("level5/BLock2/Label").text = str(valores[1])


func _on_BLock3_pressed():
	if(valores[2]>=9):
		valores[2]=0
		get_tree().get_root().get_node("level5/BLock3/Label").text = str(valores[2])
		valores[2] +=1
	
	else:
		valores[2] +=1
		get_tree().get_root().get_node("level5/BLock3/Label").text = str(valores[2])


func _on_BLock4_pressed():
	if(valores[3]>=9):
		valores[3]=0
		get_tree().get_root().get_node("level5/BLock4/Label").text = str(valores[3])
		valores[3] +=1
	
	else:
		valores[3] +=1
		get_tree().get_root().get_node("level5/BLock4/Label").text = str(valores[3])


func _on_BLock5_pressed():
	if(valores[4]>=9):
		valores[4]=0
		get_tree().get_root().get_node("level5/BLock5/Label").text = str(valores[4])
		valores[4] +=1
	
	else:
		valores[4] +=1
		get_tree().get_root().get_node("level5/BLock5/Label").text = str(valores[4])


func _on_BLock6_pressed():
	if(valores[5]>=9):
		valores[5]=0
		get_tree().get_root().get_node("level5/BLock6/Label").text = str(valores[5])
		valores[5] +=1
	
	else:
		valores[5] +=1
		get_tree().get_root().get_node("level5/BLock6/Label").text = str(valores[5])


func _on_BLock7_pressed():
	if(valores[6]>=9):
		valores[6]=0
		get_tree().get_root().get_node("level5/BLock7/Label").text = str(valores[6])
		valores[6] +=1
	
	else:
		valores[6] +=1
		get_tree().get_root().get_node("level5/BLock7/Label").text = str(valores[6])
