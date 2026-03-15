extends Node2D

@export_enum("Draw", "Erase") var mode: int = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	if mode == 0:
		$Draw.visible = true
		$Erase.visible = false
	elif mode == 1:
		$Sprite2D.flip_h = true
		$Draw.visible = false
		$Erase.visible = true		
