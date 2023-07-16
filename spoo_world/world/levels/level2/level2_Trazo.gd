extends Node2D

onready var _draw_area = get_tree().get_root().get_node("level2/lienzo/AreaDibujo")

func _draw():
	# Calcular las coordenadas del centro del DrawArea
	var center = _draw_area.rect_position + _draw_area.rect_size / 2
	
	# Dibujar el número 2 utilizando líneas rectas en el centro del DrawArea
	draw_line(Vector2(center.x - _draw_area.rect_size.x * 0.2, center.y + _draw_area.rect_size.y * 0.4), Vector2(center.x + _draw_area.rect_size.x * 0.2, center.y + _draw_area.rect_size.y * 0.4), Color.black)
	draw_line(Vector2(center.x + _draw_area.rect_size.x * 0.2, center.y + _draw_area.rect_size.y * 0.4), Vector2(center.x + _draw_area.rect_size.x * 0.2, center.y + _draw_area.rect_size.y * 0.2), Color.black)
	draw_line(Vector2(center.x + _draw_area.rect_size.x * 0.2, center.y + _draw_area.rect_size.y * 0.2), Vector2(center.x - _draw_area.rect_size.x * 0.2, center.y + _draw_area.rect_size.y * 0.2), Color.black)
	draw_line(Vector2(center.x - _draw_area.rect_size.x * 0.2, center.y + _draw_area.rect_size.y * 0.2), Vector2(center.x - _draw_area.rect_size.x * 0.2, center.y), Color.black)
	draw_line(Vector2(center.x - _draw_area.rect_size.x * 0.2, center.y), Vector2(center.x + _draw_area.rect_size.x * 0.2, center.y), Color.black)
	draw_line(Vector2(center.x + _draw_area.rect_size.x * 0.2, center.y), Vector2(center.x + _draw_area.rect_size.x * 0.2, center.y - _draw_area.rect_size.y * 0.4), Color.black)
	draw_line(Vector2(center.x + _draw_area.rect_size.x * 0.2, center.y - _draw_area.rect_size.y * 0.4), Vector2(center.x - _draw_area.rect_size.x * 0.2, center.y - _draw_area.rect_size.y * 0.4), Color.black)
