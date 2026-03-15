extends Node2D

var credits_screen = "res://credits_screen.tscn"

func _ready():
	Globals.total_water_particles = 0
	Globals.total_water_particles_background = 0

	Globals.cur_level = 0

	Globals.reset = false

func _on_play_button_button_down():
	GlobalSFX.playSFXButton()
	var next_level_file = LevelList.getLevel(Globals.cur_level)
	get_tree().change_scene_to_file(next_level_file)


func _on_credits_button_button_down():
	GlobalSFX.playSFXButton()
	get_tree().change_scene_to_file(credits_screen)


func _on_quit_button_button_down():
	GlobalSFX.playSFXButton()
	get_tree().quit()
