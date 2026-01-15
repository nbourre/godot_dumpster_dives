class_name CameraMain
extends Camera2D

@export var player : Player
@export var lvl_mgr : LevelManager

@export var min_zoom: float = 0.25
@export var max_zoom: float = 4.0
@export var zoom_margin: float = 100.0 

var lvl_rect : Rect2
var lvl_loaded : bool = false 

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if (lvl_loaded != true) :
		lvl_rect = lvl_mgr.get_level_bounding_rect()
		lvl_loaded = true
		limit_bottom = lvl_rect.position.y + lvl_rect.size.y
		global_position.x = lvl_rect.position.x + lvl_rect.size.x / 2
			
	global_position.y = player.global_position.y
	
	
func set_zoom_width(width : int) -> void:
	print("Width : " + str(width))
	zoom.x = get_viewport_rect().size.x / width
	zoom.y = zoom.x
	
