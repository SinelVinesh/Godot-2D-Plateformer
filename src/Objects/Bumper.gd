extends Node2D

onready var animation_player: = $AnimationPlayer

func _on_BumpDetector_body_entered(_area:Area2D):
	animation_player.play("Bump")
