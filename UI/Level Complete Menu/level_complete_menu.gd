extends CanvasLayer

const TRANSITION_TIME = 0.1

func _on_next_level_button_button_down():
	GlobalSFX.playSFXButton()
	Globals.next_level = true
