extends Button

export(String, FILE) var next_scene_path = " "

func _on_button_up() -> void:
	get_tree().change_scene(next_scene_path)
	PlayerData.score = 0
	get_tree().paused = false
	#get_tree().reload_current_scene()
