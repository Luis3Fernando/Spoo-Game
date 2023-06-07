extends KinematicBody2D

var ppm: int = 6
var velocidad : Vector2
#var fuerza_salto: float = -300.0
var en_piso: bool
var is_moving: bool = false

var initial_position = Vector2.ZERO  

onready var distancia_salto : float = 5 *ppm
onready var tiempo_salto : float = 0.43

onready var fuerza_salto = (-2*distancia_salto)/tiempo_salto
onready var gravedad = (2*distancia_salto)/(tiempo_salto*tiempo_salto)

func _ready():
	initial_position = get_global_position()
	
func _physics_process(delta):
	velocidad.y += gravedad *delta

func _process(delta):
	if is_moving:
		velocidad.y = fuerza_salto
			
func caer():
	velocidad = move_and_slide(velocidad, Vector2.UP)

func reset_position():
	is_moving = false
	position = initial_position
