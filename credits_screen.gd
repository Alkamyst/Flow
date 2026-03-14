extends Node2D



var title_scene = "res://title_screen.tscn"

func _on_return_button_button_down():
	get_tree().change_scene_to_file(title_scene)
