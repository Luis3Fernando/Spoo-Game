extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var audio= get_node("AudioMal")
	audio.play()
	pass # Replace with function body.

func _on_TextureButton_pressed():
	var audio= get_node("AudioMal")
	audio.stop()
	Singleton.recargar()
