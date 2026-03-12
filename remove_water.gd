extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	get_parent().removeWater()

func _process(delta):
	get_parent().removeWater()
