class_name LevelManager
extends Node2D

@export var initial_level : PackedScene
var current_level : Level
var level_goal : LevelGoal
var levels : Dictionary = {}

signal goal_reached(body : Node2D)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if initial_level != null:
		current_level = initial_level.instantiate() as Level
		current_level.global_position = current_level.get_bounding_rect().position
		level_goal = current_level.get_goal()
		level_goal.connect("goal_reached", goal_touched)
		call_deferred("add_child", current_level)

func get_level_width() -> int :
	return current_level.get_bounding_rect().size.x

func get_level_bounding_rect() -> Rect2 :
	return current_level.get_bounding_rect()

func goal_touched(body : Node2D) -> void :
	goal_reached.emit(body)
	
func start_next_level() -> void :
	pass
