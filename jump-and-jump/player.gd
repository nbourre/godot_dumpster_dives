class_name Player
extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -800.0
const SIDE_VELOCITY = 80.0

var  max_angle : float

func _ready() -> void:
	max_angle = atan2(JUMP_VELOCITY, SIDE_VELOCITY)
	print (rad_to_deg(max_angle))

func _physics_process(delta: float) -> void:
	
	var angle : float
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("jump_left"):
		velocity.y = JUMP_VELOCITY
		velocity.x = -SIDE_VELOCITY
		
		
	
	if Input.is_action_just_pressed("jump_right"):
		velocity.y = JUMP_VELOCITY
		velocity.x = SIDE_VELOCITY		
	
	
	$Sprite2D.rotation = velocity.angle() + PI/2

	move_and_slide()
