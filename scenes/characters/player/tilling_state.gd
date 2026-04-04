extends NodeState

@export var player : Player 
@export var animation : AnimatedSprite2D

func _on_process(_delta : float) -> void:
	pass


func _on_physics_process(_delta : float) -> void:
	pass


func _on_next_transitions() -> void:
	if !animation.is_playing():
		transition.emit("Idle")


func _on_enter() -> void:
	if player.player_direction == Vector2.DOWN:
		animation.play("tilling_front")
	elif player.player_direction == Vector2.UP:
		animation.play("tilling_back")
	elif player.player_direction == Vector2.LEFT:
		animation.play("tilling_left") 
	elif player.player_direction == Vector2.RIGHT:
		animation.play("tilling_right")
	else:
		animation.play("tilling_front")

func _on_exit() -> void:
	animation.stop()
