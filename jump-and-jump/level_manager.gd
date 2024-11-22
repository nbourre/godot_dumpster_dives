class_name LevelManager
extends Node2D

@export var level_scene : PackedScene
var current_level : Level

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if level_scene != null:
		current_level = level_scene.instantiate() as Level
		current_level.global_position = current_level.get_bounding_rect().position
		call_deferred("add_child", current_level)

func get_level_width() -> int :
	return current_level.get_bounding_rect().size.x
