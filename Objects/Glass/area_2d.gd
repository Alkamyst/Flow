extends Area2D

var overlapNum: int = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if overlapNum >= 250:
		print("done")


func _on_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	overlapNum += 1


func _on_body_shape_exited(body_rid, body, body_shape_index, local_shape_index):
	overlapNum -= 1
