# Geometry Dash clone in Godot 4.x
class_name Player
extends CharacterBody2D

const HALF_PI := PI / 2.0

var speed: float = 300.0

var gravity: float = 1000.0
var jump_force: float = -400.0
var rotation_mult := -1.0

@onready var raycast_ground := $GroundCheck

func _physics_process(delta: float) -> void:
	raycast_ground.rotation = -rotation
	var is_grounded : bool = raycast_ground.is_colliding()

	if not is_grounded:
		velocity.y += gravity * delta
		
		# Spin while in the air
		rotation -= 0.1 * rotation_mult
	else:
		velocity.y = 0.0
		if Input.is_action_just_pressed("jump"):
			velocity.y += jump_force
		
		# Snap rotation to the nearest 90 degrees when on the floor
		rotation = round(rotation / HALF_PI) * HALF_PI

	if rotation >= TAU or rotation <= -TAU:
		rotation = 0.0

	#velocity.x = speed

	move_and_slide()
