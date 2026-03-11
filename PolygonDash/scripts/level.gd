class_name Level
extends Node2D

var cam : Camera2D = null
var joueur : Joueur = null
var floor_body : StaticBody2D = null
var music : AudioStreamPlayer = null

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	floor_body = $FloorBody
	music = $Music
	music.playing = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if joueur != null:
		floor_body.global_position.x = joueur.global_position.x
		
func set_joueur(p: Joueur) -> void:
	joueur = p

func set_camera(camera: Camera2D) -> void:
	cam = camera
