extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var api_key = EnvLoader.get_env("API_KEY")
	print(api_key)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
