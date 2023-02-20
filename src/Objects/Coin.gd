extends Area2D

onready var animation_player = $AnimationPlayer 
export var impulse: = -150
export var can_impulse: = false

func _on_body_entered(_body:Node):
	SignalBus.emit_signal("coin_picked")
	print("picked")
	animation_player.play("Fade out")
	yield(animation_player,"animation_finished")
	queue_free()

func fade_out_impulse():
	can_impulse = true;

func _process(delta):
	if(can_impulse):
		move_local_y(delta*impulse)