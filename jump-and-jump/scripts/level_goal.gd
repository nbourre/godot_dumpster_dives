class_name LevelGoal
extends Node2D

signal goal_reached(body: Node2D)

func _on_area_2d_body_exited(body: Node2D) -> void:
	goal_reached.emit(body)
