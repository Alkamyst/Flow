extends Node2D

@export var lines: int = 3
const LINE = preload("res://Objects/Line/line.tscn")
var new_line
var lineArray: Array = []
var linesPlaced: int = 0
@onready var numLabel: Label = $CanvasLayer/Panel/HBoxContainer/NumLabel

var canClick: bool = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if canClick:
		if Input.is_action_just_pressed("Click"):
			new_line = LINE.instantiate()
			add_child(new_line)
			new_line.points[0] = get_global_mouse_position()
			lineArray.append(new_line)
			if lineArray.size() > lines:
				popArray(0)
		elif Input.is_action_pressed("Click"):
			if new_line:
				new_line.points[1] = get_global_mouse_position()
		elif Input.is_action_just_released("Click"):
			if new_line:
				new_line.enable()
				if linesPlaced < lines:
					linesPlaced += 1
		
	numLabel.text = str(lines - linesPlaced)
	
	canClick = true
	
	if Input.is_action_just_pressed("Reset"):
		reset()
	
func subLinesPlaced():
	linesPlaced -= 1
	
func popArray(num):
	lineArray[num].queue_free()
	lineArray.pop_at(num)

func reset():
	Globals.reset = true
	#$get_tree().reload_current_scene()


func _on_reset_button_button_down():
	reset()
