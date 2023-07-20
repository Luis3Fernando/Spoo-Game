extends KinematicBody2D

const SPEED = 200.0
var motion = Vector2.ZERO
const PUSH_FORCE = 300.0  
var moving = false

  
func _physics_process(delta):
	if moving:
		move_and_slide(Vector2(SPEED, 0))

func _on_comenzar_pressed():
	moving = true


