extends Node2D

var count=0
var students = [
	"Luis Flores Torres",
	"Ana González Vega",
	"Diego Rodríguez Paredes",
	"Valentina Pérez Ramos",
	"Carlos Torres Silva",
	"Isabella Vargas López",
	"Sebastián Sánchez Huamaní",
	"Camila Díaz Castro",
	"Javier Silva Mendoza",
	"Lucía Chávez Quispe"
] 
func _ready():	
	for i in range(len(students)):
		var object_student = Button.new()
		#add_child(object_student)
		object_student.text = "\t\t" + str(i) + "\t\t\t" + students[i]
		object_student.icon = load("res://spoo_world/assets/icon/arrow_50.png")
		object_student.align = Button.ALIGN_LEFT
		object_student.icon_align = Button.ALIGN_RIGHT
		$VBoxContainer.add_child(object_student)
	

func _on_TouchScreenButton_pressed():
	var new_scene_path = "res://spoo_world/world/Admin/Login.tscn"  # Ruta a la nueva escena
	get_tree().change_scene(new_scene_path)
	


func _on_Button_pressed():
	var new_scene_path = "res://spoo_world/world/levels/level_main.tscn"  # Ruta a la nueva escena
	get_tree().change_scene(new_scene_path)
