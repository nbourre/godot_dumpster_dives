extends Area2D

@onready var gestionnaire_jeu: Node = %GestionnaireJeu
@onready var animation_player: AnimationPlayer = $AnimationPlayer

func _on_body_entered(body: Node2D) -> void:
	gestionnaire_jeu.ajouter_point()
	animation_player.play("ramassage")
