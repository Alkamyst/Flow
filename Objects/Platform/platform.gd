extends StaticBody2D

@export var lineWidth: float = 200.0
const WIDTH = 10
@onready var Col: CollisionShape2D = $CollisionShape2D
@onready var Line: Line2D = $Line2D
@export var speed: float = 20
@export var destPos: Vector2 = Vector2 (0,0)


# Called when the node enters the scene tree for the first time.
func _ready():
	Line.points[0].x = -lineWidth / 2
	Line.points[1].x = lineWidth / 2
	setCol()
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func setCol():
	var length = lineWidth
	Col.shape.extents = Vector2(length / 2, WIDTH / 2)
