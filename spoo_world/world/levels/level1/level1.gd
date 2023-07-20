extends Node2D

var student
onready var animacion = $spoo/animation_spoo

func _ready():
	animacion.play("parpadear")

func _on_back_pressed():
	var new_scene_path = "res://spoo_world/world/levels/level_main.tscn"  # Ruta a la nueva escena
	get_tree().change_scene(new_scene_path)


func _on_TButton_Music_pressed():
	var audioPlayer = get_node("AudioFondo") 
	if audioPlayer.playing:
		audioPlayer.stop()
	else:
		audioPlayer.play(audioPlayer.get_playback_position())

func _on_Button_pressed():
	pass # Replace with function body.
