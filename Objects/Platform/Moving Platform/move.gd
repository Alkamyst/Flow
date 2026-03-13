extends Node

var parent
@export var movPos: Vector2 = Vector2(0,0)
var home: Vector2 = Vector2(0,0)
@onready var anim: AnimationPlayer = $AnimationPlayer

# Called when the node enters the scene tree for the first time.
func _ready():
	parent = get_parent()
	if parent:
		home = get_parent().global_position


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if parent:
		parent.global_position = home + movPos * parent.destPos
