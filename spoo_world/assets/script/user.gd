extends Reference

class User:

	var name_user: String
	var password: String
	var name: String
	var sur_name: String

	func set_name_user(new_name_user: String):
		name_user = new_name_user

	func get_name_user() -> String:
		return name_user

	func set_password(new_password: String):
		password = new_password

	func get_password() -> String:
		return password

	func set_name(new_name: String):
		name = new_name

	func get_name() -> String:
		return name

	func set_sur_name(new_sur_name: String):
		sur_name = new_sur_name

	func get_sur_name() -> String:
		return sur_name

