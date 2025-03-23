@tool
extends EditorPlugin

func _enter_tree() -> void:
	add_custom_type("WindowV2", "Panel", preload("res://addons/windows-v2/custom_window.gd"), preload("res://addons/windows-v2/icon.png"))
	pass


func _exit_tree() -> void:
	remove_custom_type("WindowV2")
