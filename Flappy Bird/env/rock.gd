extends Area2D

signal player_collided

func _ready():
	var world = get_parent().get_parent()
	if world.name == "world":
		connect("player_collided", world, "game_over")

func _on_Node2_body_entered(body):
	if body.name == "player":
		emit_signal("player_collided")
		print(123)


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
