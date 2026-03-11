# Geometry Dash clone in Godot 4.x
class_name Joueur
extends CharacterBody2D

const HALF_PI := PI / 2.0

var POS_DEPART := Vector2(70, 460)

var facteur_ajustement := 460.0/ 350.0

var vitesse: float = 350 * facteur_ajustement
var gravite: float = 2700 * facteur_ajustement
var saut_force: float = -690 * facteur_ajustement
var rotation_mult := -1.0
var rotation_vitesse := 0.1
var etat_sol_avant := false

@onready var detect_sol := $DetecteurSol

func _physics_process(delta: float) -> void:


	detect_sol.rotation = -rotation
	var au_sol : bool = detect_sol.is_colliding() or is_on_floor()
	
	if au_sol:
		if sol_mortel():
			mort()
			
		velocity.y += gravite * delta
		if Input.is_action_just_pressed("jump"):
			velocity.y += saut_force

		# Snap rotation to the nearest 90 degrees when on the floor
		rotation = round(rotation / HALF_PI) * HALF_PI

		#modulate = Color(1, 1, 1) # Normal color when on the ground
	else:
		velocity.y += gravite * delta
	
		# Spin while in the air
		rotation -= rotation_vitesse * rotation_mult

		#modulate = Color(1, 0.5, 0.5) # Change color when in the air

	etat_sol_avant = au_sol

	if rotation >= 2 * PI or rotation <= -2 * PI:
		rotation = 0.0

	velocity.x = vitesse

	if is_on_wall():
		mort()

	move_and_slide()

func mort():
	position.x = POS_DEPART.x
	position.y = POS_DEPART.y
	rotation = 0.0

# Regarde si le joueur est sur un tile mortel
func sol_mortel() -> bool:
	var autre_objet = detect_sol.get_collider()

	if autre_objet is not TileMapLayer:
		return false

	var tilemap : TileMapLayer = autre_objet
	
	# Obtenir le point de collision du détecteur de sol
	var collision_point = detect_sol.get_collision_point()

	# Convertir le point de collision en coordonnées de tile
	var local_collision_point = tilemap.to_local(collision_point)

	# Obtenir les coordonnées du tile à partir du point de collision local
	var tile_coord : Vector2i = tilemap.local_to_map(local_collision_point)
	var tile_data : TileData = tilemap.get_cell_tile_data(tile_coord)

	if tile_data != null:
		var custom_data = tile_data.get_custom_data("mortel")
		if custom_data == true:
			print("Mortel!")

			return true

	return false