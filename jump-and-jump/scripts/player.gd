class_name Player
extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0
const JUMP_FORCE : Vector2 = Vector2(200, -1000);

func _physics_process(delta: float) -> void:
	
	var angle : float
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
	else:
		velocity.x = 0
		rotation = 0.0

	# Handle jump.
	if Input.is_action_just_pressed("jump_left") or Input.is_action_just_pressed("jump_right") :
		velocity.y = JUMP_FORCE.y
		if (Input.is_action_just_pressed("jump_left")) :
			velocity.x = -JUMP_FORCE.x
		else:
			velocity.x = JUMP_FORCE.x
	
		rotation = velocity.angle() + PI / 2
	

	move_and_slide()
