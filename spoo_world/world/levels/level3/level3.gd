extends Node2D

var student

onready var base_poligono = $numero1
onready var _lines := $lines
onready var _draw_area := $area_dibujo
var _current_line : Line2D
var _drawn_patterns = [] 

func _ready():
	pass # Replace with function body.

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

func _on_music_pressed():
	var audioPlayer = get_node("AudioFondo") 
	if audioPlayer.playing:
		audioPlayer.stop()
	else:
		audioPlayer.play()

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


func _on_comprobar_pressed():
	var bandera
	for point in _drawn_patterns:
		bandera = is_point_inside_polygon(point, base_poligono)
		if !bandera:
			print("no esta bien")
			break
	
	if bandera:
		print("todo esta bien")


func _on_limpiar_pressed():
	base_poligono.visible=false
	_drawn_patterns.clear()
	_current_line.clear_points()
	for child in _lines.get_children():
		child.queue_free()
