@tool
extends Panel
signal outside_clicked
signal closed
@export var title:String
@export var window_size:Vector2 = Vector2(200,200)
@export var centered:bool = true
@export var fullscreen:bool = false
@export var close_button:bool = true
func _physics_process(delta: float) -> void:
	size.x = window_size.x
	size.y = window_size.y
	$title.text = "[center]" + title + "[/center]"
	if centered:
		
		position = Vector2((DisplayServer.window_get_size().x/2) - (window_size.x/2),(DisplayServer.window_get_size().y/2) - (window_size.y/2))
	if close_button:
		$close.show()
	else: $close.hide()
	if fullscreen:
		centered= false
		set_offsets_preset(Control.PRESET_FULL_RECT)
func _on_close_pressed() -> void:
	hide()
	closed.emit()

func _on_disabled_pressed() -> void:
	outside_clicked.emit()
