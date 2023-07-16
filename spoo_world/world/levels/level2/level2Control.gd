extends Control

var _click_pos: Array=[]

func _input(event: InputEvent) -> void:
	if not Input.is_mouse_button_pressed(BUTTON_LEFT):
		return
		
	_click_pos.append(event.position)
	update()
	
func _draw() -> void:
	for point in _click_pos:
		draw_circle(point, 10, Color.red)

