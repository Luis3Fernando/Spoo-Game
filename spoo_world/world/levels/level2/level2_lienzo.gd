extends Node2D

onready var _lines = $Lines
onready var _draw_area = get_tree().get_root().get_node("level2/lienzo/AreaDibujo")

var _pressed = false
var _current_line: Line2D


func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		_pressed = event.pressed
		
		if _pressed:
			_current_line = Line2D.new()
			_current_line.default_color = Color.red
			_current_line.width = 16.0 / _draw_area.rect_scale.x
			_lines.add_child(_current_line)

	if event is InputEventMouseMotion and _pressed:
		# Obtener el rectángulo del ColorRect
		var rect = Rect2(_draw_area.rect_position, _draw_area.rect_size)
		# Obtener la posición del mouse en el espacio global
		var global_position = event.position
		
		# Convertir la posición global a local del Node2D
		var local_position = global_transform.affine_inverse().xform(global_position)
		
		# Verificar si el punto está dentro del área de dibujo (ColorRect)
		if rect.has_point(local_position):
			_current_line.add_point(local_position)
