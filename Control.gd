extends Control

var border_color = Color(1, 0, 0)  # Color del borde

func _draw():
	draw_rect(Rect2(Vector2(), get_size()), border_color)
	draw_rect(Rect2(1, 1, get_size().x - 2, get_size().y - 2), Color(0, 0, 0, 0), true)
