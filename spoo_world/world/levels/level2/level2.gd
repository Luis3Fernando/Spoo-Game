extends Node2D

var student

var base_poligono
onready var _lines := $lines
onready var _draw_area := $area_dibujo

onready var animation = $spoo
var _current_line : Line2D
var _drawn_patterns = []
var numero_entero_aleatorio 
var numeros = [1,2,3,4,5,6,7,8,9]

onready var numero1 = $numero1
onready var numero2 = $numero2
onready var numero3 = $numero3
onready var numero4 = $numero4
onready var numero5 = $numero5
onready var numero6 = $numero6
onready var numero7 = $numero7
onready var numero8 = $numero8
onready var numero9 = $numero9

onready var img_n1= $numero1_img
onready var img_n2= $Numero2_img
onready var img_n3= $Numero3_img
onready var img_n4= $Numero4_img
onready var img_n5= $Numero5_img
onready var img_n6= $Numero6_img
onready var img_n7= $Numero7_img
onready var img_n8= $Numero8_img
onready var img_n9= $Numero9_img

onready var label = $puntos/puntos_l

func _ready():
	Singleton.stay = 2
	student = Singleton.student
	animation.play("parpadear")
	Singleton.rondas2+=1
	label.text = str(student.puntos["level2"])+"/20   ronda: "+str(Singleton.rondas2)
	var rng = RandomNumberGenerator.new()
	rng.randomize()
	var numero_entero_aleatorio = rng.randi_range(1, 9)
	
	if Singleton.rondas2<=10:
		mostrar_numero(Singleton.rondas2)
	else:
		mostrar_numero(numero_entero_aleatorio)

func mostrar_numero(numero:int):
	match numero:
		1:
			numero1.visible = true
			img_n1.visible = true
			base_poligono = numero1
			var audioPlayer= get_node("AudioUno")
			audioPlayer.play()
		2:
			numero2.visible = true
			img_n2.visible = true
			base_poligono = numero2
			var audioPlayer= get_node("AudioDos")
			audioPlayer.play()
		3:
			numero3.visible = true
			img_n3.visible = true
			base_poligono = numero3
			var audioPlayer= get_node("AudioTres")
			audioPlayer.play()
		4:
			numero4.visible = true
			img_n4.visible = true
			base_poligono = numero4
			var audioPlayer= get_node("AudioCuatro")
			audioPlayer.play()
		5:
			numero5.visible = true
			img_n5.visible = true
			base_poligono = numero5
			var audioPlayer= get_node("AudioCinco")
			audioPlayer.play()
		
		6:
			numero6.visible = true
			img_n6.visible = true
			base_poligono = numero6
			var audioPlayer= get_node("AudioSeis")
			audioPlayer.play()
			
		7:
			numero7.visible = true
			img_n7.visible = true
			base_poligono = numero7
			var audioPlayer= get_node("AudioSiete")
			audioPlayer.play()
		8:
			numero8.visible = true
			img_n8.visible = true
			base_poligono = numero8
			var audioPlayer= get_node("AudioOcho")
			audioPlayer.play()
		9:
			numero9.visible = true
			img_n9.visible = true
			base_poligono = numero9
			var audioPlayer= get_node("AudioNueve")
			audioPlayer.play()
		_:
			numero3.visible = true
			img_n3.visible = true
			base_poligono = numero3


func _input(event):
	if event is InputEventScreenTouch:
		
		if event.is_pressed():
			_current_line = Line2D.new()
			_current_line.default_color = Color.teal
			_current_line.width = 40.0
			_lines.add_child(_current_line)
		
	if event is InputEventScreenDrag:
		var click_position = get_global_mouse_position()
		# Obtener el rectángulo del ColorRect
		var rect = Rect2(_draw_area.rect_position, _draw_area.rect_size)
		# Obtener la posición del mouse en el espacio global
		var global_position = event.position
		
		# Convertir la posición global a local del Node2D
		var local_position = global_transform.affine_inverse().xform(global_position)
		
		# Verificar si el punto está dentro del área de dibujo (ColorRect)
		if rect.has_point(local_position):
			_drawn_patterns.append(click_position)
			_current_line.add_point(local_position)


func _on_back_pressed():
	var new_scene_path = "res://spoo_world/world/levels/level_main.tscn"  # Ruta a la nueva escena
	get_tree().change_scene(new_scene_path)

func is_point_inside_polygon(point: Vector2, polygon: Polygon2D) -> bool:
	var vertices = polygon.get_polygon()
	var n = vertices.size()
	var inside = false
	
	for i in range(n):
		var j = (i + 1) % n
		var vertex_i = polygon.to_global(vertices[i]) 
		var vertex_j = polygon.to_global(vertices[j]) 
		
		if (vertex_i.y > point.y) != (vertex_j.y > point.y) and point.x < (vertex_j.x - vertex_i.x) * (point.y - vertex_i.y) / (vertex_j.y - vertex_i.y) + vertex_i.x:
				inside = !inside
				
	return inside

func in_polygon(point: Vector2, polygon: Polygon2D):
	# Obtiene el arreglo de vértices del polígono
	var vertex_local  = polygon.get_polygon()
	
	# Itera a través de los vértices e imprime sus coordenadas
	for vertex in vertex_local:
		var vertex_global = polygon.to_global(vertex)
		print(vertex_global)

func _on_verificar_pressed():
	var bandera
	for point in _drawn_patterns:
		bandera = is_point_inside_polygon(point, base_poligono)
		if !bandera:
			break
	
	if bandera:
		if Singleton.rondas2<=20 and !student.completados["level2"]:
			student.puntos["level2"] +=2
		_on_vaciar_pressed()
		Singleton.showSceneWithDelay("res://spoo_world/world/modal/bien.tscn", "res://spoo_world/world/levels/level2/level2.tscn")
	
	else:
		if Singleton.rondas2<=20 and !student.completados["level2"]:
			student.puntos["level2"] +=0
		Singleton.rondas2-=1
		Singleton.showSceneWithDelay("res://spoo_world/world/modal/mal.tscn", "res://spoo_world/world/levels/level2/level2.tscn")
		

func _on_vaciar_pressed():
	_drawn_patterns.clear()
	_current_line.clear_points()
	for child in _lines.get_children():
		child.queue_free()


func _on_TButton_Music_pressed():
	var audioPlayer = get_node("AudioFondo") 
	if audioPlayer.playing:
		audioPlayer.stop()
	else:
		audioPlayer.play(audioPlayer.get_playback_position())
