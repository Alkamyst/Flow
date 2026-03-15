extends Node2D

@onready var SFXButton: AudioStreamPlayer = $Button

func playSFXButton():
	SFXButton.play()
