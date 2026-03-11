extends Node2D

var joueur : Joueur = null
var level : Level = null
var cam : Camera2D = null

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	joueur = $Joueur
	cam = $Camera2D
	level = $Level
	level.set_camera(cam)
	level.set_joueur(joueur)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("reset"):
		get_tree().reload_current_scene()

	cam.global_position.x = joueur.global_position.x
