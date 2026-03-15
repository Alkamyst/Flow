extends Node2D

var total_water_particles = 0
var total_water_particles_background = 0

var cur_level = 0

var reset: bool = false
var next_level: bool = false
var paused: bool = false

func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("Fullscreen"):
		var mode := DisplayServer.window_get_mode()
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN if mode != DisplayServer.WINDOW_MODE_FULLSCREEN else DisplayServer.WINDOW_MODE_WINDOWED)
