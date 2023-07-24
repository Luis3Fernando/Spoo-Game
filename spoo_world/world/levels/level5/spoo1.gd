extends RigidBody2D

var jumping = false
var jump_y = 500.0
var jump_x = 185
var bandera_nivel = 0
func _ready():
	get_tree().get_root().get_node("level5/Timer").connect("timeout",self, "_on_Timer_timeout")

func _physics_process(delta):
	if jumping:
		linear_velocity.y = -jump_y
		linear_velocity.x = jump_x
		jumping = false
	

func _on_start_pressed():
	bandera_nivel+=1
	if bandera_nivel==1:
		get_tree().get_root().get_node("level5/Timer").start()
		jumping = true
		
func _on_Timer_timeout():
	jumping = !jumping
