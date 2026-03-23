class_name Character
extends CharacterBody2D

var speed := 200.0
var coup := false

@onready var animated_sprite : AnimatedSprite2D = $AnimatedSprite2D

func _process(delta : float) -> void:
	var movement := Vector2.ZERO

	if Input.is_action_pressed("right"):
		movement.x += 1

		animated_sprite.flip_h = false
		animated_sprite.play("Walk")
	if Input.is_action_pressed("left"):
		movement.x -= 1
		animated_sprite.flip_h = true
		animated_sprite.play("Walk")
	if Input.is_action_pressed("down"):
		movement.y += 1
		animated_sprite.play("Walk")
	if Input.is_action_pressed("up"):
		movement.y -= 1
		animated_sprite.play("Walk")

	movement = movement.normalized()

	if movement == Vector2.ZERO:
		velocity = lerp(velocity, Vector2.ZERO, 0.2)

		animated_sprite.play("Idle")
	else:
		velocity = movement * speed

	# Gestion des coups de poing

	move_and_slide()

func _on_animated_sprite_2d_animation_finished() -> void:
	pass
