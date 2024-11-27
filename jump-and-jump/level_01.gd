extends Level

@onready var polygon := $Polygon2D
var bounds := Rect2()
@onready var starting_point : Marker2D = $StartingPoint

func _ready() -> void:
	bounds = get_limits()
	starting_point.position.x = bounds.size.x / 2

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

func get_starting_point() -> Vector2 :
	return starting_point.position

func get_goal() -> LevelGoal:
	return $LevelGoal
