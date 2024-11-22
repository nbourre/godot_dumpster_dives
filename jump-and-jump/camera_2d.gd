class_name CameraMain
extends Camera2D

@export var player : Player

@export var min_zoom: float = 0.25
@export var max_zoom: float = 4.0
@export var zoom_margin: float = 100.0 

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	global_position = player.global_position
	
func set_zoom_width(width : int) -> void:
	print("Width : " + str(width))
	zoom.x = get_viewport_rect().size.x / width
	zoom.y = zoom.x
	
