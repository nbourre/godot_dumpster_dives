class_name World
extends Node2D

@onready var cam := $Camera2D as CameraMain
@onready var lvl_mgr : LevelManager = $LevelManager

var level : Level
var level_ready : bool = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if (!level_ready and lvl_mgr.current_level != null):
		level_ready = true
		cam.set_zoom_width(lvl_mgr.get_level_width())
		return
