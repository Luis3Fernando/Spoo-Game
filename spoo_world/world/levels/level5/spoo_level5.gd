extends KinematicBody2D

var ppm: int = 40
var direction_horizontal : float
var velocidad : Vector2
#var fuerza_salto: float = -300.0
var en_piso: bool
var is_moving: bool = false

var initial_position = Vector2.ZERO  

onready var distancia_salto : float = 5 *ppm
onready var tiempo_salto : float = 0.4

onready var fuerza_salto = (-2*distancia_salto)/tiempo_salto
onready var gravedad = (2*distancia_salto)/(tiempo_salto*tiempo_salto)

onready var rapidez : float = 3.0 *ppm

func _ready():
	get_tree().get_root().get_node("level5/Timer").connect("timeout",self, "_on_Timer_timeout")
	initial_position = get_global_position()
	
func _physics_process(delta):
	velocidad.x = direction_horizontal*rapidez
	velocidad.y += gravedad *delta
	velocidad = move_and_slide(velocidad, Vector2.UP)
	if is_on_floor():
		en_piso = true
		
	else:
		en_piso = false

func _process(delta):
	if is_moving:
		if en_piso:
			velocidad.y = fuerza_salto
			
		move_and_collide(Vector2(4.2,0))

func _on_play_pressed():
	get_tree().get_root().get_node("level5/Timer").start()

func reset_game():
	is_moving = false
	position = initial_position
	get_tree().get_root().get_node("level5/Timer").stop()

func _on_Timer_timeout():
	is_moving = !is_moving
