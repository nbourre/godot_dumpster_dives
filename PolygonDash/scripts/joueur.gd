# Geometry Dash clone in Godot 4.x
class_name Joueur
extends CharacterBody2D

const HALF_PI := PI / 2.0

var vitesse: float = 300.0
var gravite: float = 1300.0
var saut_force: float = -500.0
var rotation_mult := -1.0
var rotation_vitesse := 0.1

@onready var detect_sol := $DetecteurSol

func _physics_process(delta: float) -> void:
	detect_sol.rotation = -rotation
	var au_sol : bool = detect_sol.is_colliding()
	
	if au_sol:
		if Input.is_action_just_pressed("jump"):
			velocity.y += saut_force

		# Snap rotation to the nearest 90 degrees when on the floor
		rotation = round(rotation / HALF_PI) * HALF_PI

	else:
		velocity.y += gravite * delta
	
		# Spin while in the air
		rotation -= rotation_vitesse * rotation_mult

	if rotation >= 2 * PI or rotation <= -2 * PI:
		rotation = 0.0

	velocity.x = vitesse

	move_and_slide()
