extends Node2D
# Animacion del intro
func _ready():
	$AnimationPlayer.play("Aparecer")
	yield(get_tree().create_timer(2),"timeout")
	$AnimationPlayer.play("Desaparecer")
	yield(get_tree().create_timer(2),"timeout")
	#cambio de escena automaticamente
	get_tree().change_scene("res://spoo_world/world/2-Pantalla_de_carga.tscn")
