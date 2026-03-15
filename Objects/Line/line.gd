extends StaticBody2D

@export var points: Array = [Vector2(0,0), Vector2(0,0)]

@onready var Col: CollisionShape2D = $CollisionShape2D
@onready var MouseCol: CollisionShape2D = $MouseArea2D/CollisionShape2D
@onready var Line: Line2D = $Line2D

@onready var SFX: Node2D = $SFX
@onready var SFX_Erase: AudioStreamPlayer2D = $SFX/Erase

var drawn: bool = false

const WIDTH = 10

const GREY = Color("838383ff")
const WHITE = Color("ffffffff")

var mouseIn: bool = false

func playSFXErase():
	SFX_Erase.play()

# Called when the node enters the scene tree for the first time.
func _ready():
	Line.default_color = GREY


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	Col.position = (points[0] + points[1]) / 2
	Col.rotation = points[0].direction_to(points[1]).angle()
	var length = points[0].distance_to(points[1])
	Col.shape.extents = Vector2(length / 2, WIDTH / 2)
	
	MouseCol.shape = Col.shape
	MouseCol.position = Col.position
	MouseCol.rotation = Col.rotation
	MouseCol.shape.extents = Vector2(length / 2, WIDTH / 2 * 2)

	Line.points = points
	
	if mouseIn:
		if Input.is_action_pressed("Right Click"):
			get_parent().popArray(get_parent().lineArray.find(self))
			get_parent().subLinesPlaced()
			
			playSFXErase()
			SFX_Erase.global_position = points[0]
			SFX_Erase.reparent(get_tree().current_scene)
	
func enable():
	drawn = true
	Col.disabled = false
	MouseCol.disabled = false
	Line.default_color = WHITE


func _on_mouse_area_2d_mouse_entered():
	mouseIn = true


func _on_mouse_area_2d_mouse_exited():
	mouseIn = false
