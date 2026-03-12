extends Area2D

var overlapNum: float = 0.0
const OVERLAP_NEEDED: float = 250.0
var active: bool = false

@onready var Bar: ProgressBar = $"../ProgressBar"
const MENU = preload("res://UI/Level Complete Menu/level_complete_menu.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if overlapNum >= OVERLAP_NEEDED:
		get_tree().paused = true
		var new_menu = MENU.instantiate()
		get_tree().current_scene.add_child(new_menu)
	
	Bar.value = overlapNum / OVERLAP_NEEDED * 100.0


func _on_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	overlapNum += 1


func _on_body_shape_exited(body_rid, body, body_shape_index, local_shape_index):
	overlapNum -= 1
