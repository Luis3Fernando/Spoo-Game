extends Node2D

var nombre_completo = ""
var array_nombre= ["nombre", "apellidos", ""]
onready var input_nombre = $Sprite/Panel/apellido/apellido_input
onready var input_apellido = $Sprite/Panel/nombre/nombre_input

func _ready():
	input_nombre.text = array_nombre[0]
	input_apellido.text = array_nombre[1]+" "+array_nombre[2]
	
func inicializar(parametro1):
	array_nombre = separar_apellidos(parametro1)

func separar_apellidos(nombre_completo: String) -> Array:
	var partes = nombre_completo.split(" ") 
	var num_partes = partes.size() 
	
	var primer_apellido = ""
	var segundo_apellido = ""
	var nombres = ""
	
	if num_partes >= 3:
		primer_apellido = partes[num_partes - 2]
		segundo_apellido = partes[num_partes - 1]
		
		for i in range(num_partes - 2):
			nombres += partes[i] + " "
			
		nombres = nombres.strip_edges()
		
	elif num_partes == 2:
		primer_apellido = partes[1]
		nombres = partes[0]
		
	else:
		nombres = nombre_completo
	
	return [nombres, primer_apellido, segundo_apellido]
	

func _on_atras_pressed():
	get_tree().change_scene("res://spoo_world/world/Admin/edit_student.tscn")


func _on_actualizar_pressed():
	var nombre_completo = array_nombre[0] + " "+ array_nombre[1]+ " "+ array_nombre[2]
	var nombre_nuevo = input_nombre.text+" "+input_apellido.text
	var objeto = Db_Estudiante.new()
	objeto.actualizar_nombre_estudiante(nombre_completo, nombre_nuevo)
