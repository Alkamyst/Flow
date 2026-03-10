extends Node2D

const LINE = preload("res://Objects/Line/line.tscn")
var new_line
var lineArray: Array = []

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Input.is_action_just_pressed("Click"):
		new_line = LINE.instantiate()
		add_child(new_line)
		new_line.points[0] = get_global_mouse_position()
		lineArray.append(new_line)
		if lineArray.size() > 3:
			lineArray[0].queue_free()
			lineArray.pop_front()
	elif Input.is_action_pressed("Click"):
		new_line.points[1] = get_global_mouse_position()
	elif Input.is_action_just_released("Click"):
		new_line.enable()
