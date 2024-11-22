extends Level

@onready var polygon := $Polygon2D
var bounds := Rect2()

func _ready() -> void:
	bounds = get_limits()

func get_limits() -> Rect2:
	var result := Rect2()
	result.position = Vector2(100000, 100000)
	result.size = Vector2(-1, -1)
	for vertex in polygon.polygon:
		if vertex.x < result.position.x :
			result.position.x = vertex.x
		if vertex.y < result.position.y :
			result.position.y = vertex.y
		if vertex.x - result.position.x > result.size.x:
			result.size.x = vertex.x - result.position.x
		if vertex.y - result.position.y > result.size.y:
			result.size.y = vertex.y - result.position.y
			
	return result

func get_bounding_rect() -> Rect2 :
	return bounds
