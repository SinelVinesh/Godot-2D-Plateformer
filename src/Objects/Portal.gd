extends Node2D

onready var animation_player = $Area2D/AnimationPlayer
export var next_scene: PackedScene

func _on_body_entered(_body:Node):
	teleport()

func teleport():
	animation_player.play("Fade in")
	yield(animation_player,"animation_finished")
	get_tree().change_scene_to(next_scene)


	
