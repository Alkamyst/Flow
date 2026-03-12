extends CanvasLayer

const TRANSITION_TIME = 0.1

func _on_next_level_button_button_down():
	Globals.cur_level += 1
	
	var next_level_file = LevelList.getLevel(Globals.cur_level)
	
	"""
	var tween = create_tween()
	tween.tween_interval(TRANSITION_TIME)
	tween.tween_callback(
		get_tree().change_scene_to_file.bind(next_level_file)
	)
	"""
	
	get_tree().change_scene_to_file(next_level_file)
