extends StaticBody2D

@onready var curve = $"..".curve
@onready var polygonNode: Polygon2D = $Polygon2D
@onready var colPolygonNode: CollisionPolygon2D = $CollisionPolygon2D
@onready var lineNode: Line2D = $Polygon2D/Line2D
@onready var lightOccluder: LightOccluder2D = $LightOccluder2D

# Called when the node enters the scene tree for the first time.
func _ready():
	var polygon = curve.get_baked_points()
	
	polygonNode.polygon = polygon
	lineNode.points = polygon
	colPolygonNode.polygon = polygon
	lightOccluder.occluder.polygon = polygon
