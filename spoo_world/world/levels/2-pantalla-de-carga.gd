extends Control

var loading_bar = null
var load_thread = null

func _ready():
	loading_bar = get_node("ProgressBar")
	load_thread = Thread.new()
	load_thread.start(self, "_loading_simulation")

func _loading_simulation():
	for i in range(100):
		loading_bar.value = i + 1
		var load_time = rand_range(0.05, 0.2)
		yield(get_tree(), "idle_frame")
		yield(get_tree().create_timer(load_time), "timeout") # Usar un temporizador para esperar un tiempo específico
	get_tree().change_scene("res://spoo_world/world/inicio.tscn")
