extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	transDone()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func transDone():
	get_tree().paused = false
	Globals.total_water_particles = 0
