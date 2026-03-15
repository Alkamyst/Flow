extends StaticBody2D

@onready var Bar: ProgressBar = $ProgressBar

# Called when the node enters the scene tree for the first time.
func _ready():
	Bar.position.x = position.x - 82
	Bar.position.y = position.y + 9


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
