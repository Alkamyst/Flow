extends StaticBody2D

@export var points: Array = [Vector2(0,0), Vector2(0,0)]

@onready var Col: CollisionShape2D = $CollisionShape2D
@onready var Line: Line2D = $Line2D

var drawn: bool = false

const WIDTH = 10

const GREY = Color("919191ff")
const WHITE = Color("ffffffff")

# Called when the node enters the scene tree for the first time.
func _ready():
	Line.default_color = GREY


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	Col.position = (points[0] + points[1]) / 2
	Col.rotation = points[0].direction_to(points[1]).angle()
	var length = points[0].distance_to(points[1])
	Col.shape.extents = Vector2(length / 2, WIDTH / 2)

	Line.points = points
	
func enable():
	drawn = true
	Col.disabled = false
	Line.default_color = WHITE
