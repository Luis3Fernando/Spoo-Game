extends KinematicBody2D

const SPEED = 300.0
var motion = Vector2.ZERO

func _process(delta):
	motion.x = 0

	if Input.is_action_pressed("ui_right"):
		motion.x += SPEED

	# Aplica el movimiento al KinematicBody2D
	move_and_slide(motion)
