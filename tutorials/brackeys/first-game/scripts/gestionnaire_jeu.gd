extends Node

var score : int = 0

@onready var pointage: Label = $Pointage

func ajouter_point():
	score += 1
	pointage.text = "Tu as récolté " + str(score) + " pièces."
	
