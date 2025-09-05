extends Area2D

@onready var timer: Timer = $Timer

func _on_body_entered(body: Node2D) -> void:
	print ("Tu es mort!")
	Engine.time_scale = 0.3
	body.get_node("CollisionShape2D").queue_free()
	timer.start()
	pass # Replace with function body.


func _on_timer_timeout() -> void:
	Engine.time_scale = 1
	get_tree().reload_current_scene()
	pass # Replace with function body.
