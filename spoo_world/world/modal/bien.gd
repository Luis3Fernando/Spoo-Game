extends Node2D


func _ready():
	var audio= get_node("AudioBien")
	audio.play()

func _on_TextureButton_pressed():
	var audio= get_node("AudioBien")
	audio.stop()
	Singleton.recargar()
