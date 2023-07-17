extends Node2D

var students = []

func Lista_Estudiantes():
	var list =Db_Estudiante.new()
	students = list.obtener_estudiantes()

func _ready():
	Lista_Estudiantes()
	for i in range(len(students)):
		var object_student = Button.new()
		object_student.text = "           "+str(i+1)+"                                                                                             "+ students[i].nombreCompleto+"                                      "+"/20"
		object_student.icon = load("res://spoo_world/assets/icon/moneda_50.png")
		object_student.align = Button.ALIGN_LEFT
		object_student.icon_align = Button.ALIGN_RIGHT
		get_tree().get_root().get_node("delete/ScrollContainer/VBoxContainer").add_child(object_student)
		#$VBoxContainer.add_child(object_student)


func _on_Button_pressed():
	get_tree().change_scene("res://spoo_world/world/Admin/admin_main.tscn")
