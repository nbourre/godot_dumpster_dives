class_name Level
extends Node2D


func get_limits() -> Rect2:
	var result := Rect2()
	return result

func get_bounding_rect() -> Rect2 :
	var result := Rect2()
	return result

func get_starting_point() -> Vector2 :
	return Vector2.ZERO

func get_goal() -> LevelGoal:
	push_warning("No level set in level")
	return 
