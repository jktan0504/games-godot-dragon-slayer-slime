extends Area2D

@onready var timer = $Timer
@onready var dead_sound = $dead_sound

func _on_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	print("You died!")
	dead_sound.play()
	Engine.time_scale = 0.5
	body.get_node("CollisionShape2D").queue_free()
	timer.start()

func _on_timer_timeout():
	Engine.time_scale = 1.0
	get_tree().reload_current_scene() # restart game
