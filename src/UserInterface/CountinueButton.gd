extends Button


func _on_button_up() -> void:
	get_tree().paused = false
	get_tree().set_input_as_handled()
	get_tree().reload_current_scene()
