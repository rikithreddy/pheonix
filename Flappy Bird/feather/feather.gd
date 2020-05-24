extends Area2D


signal player_collided


func _ready():
	var world = get_parent().get_parent()
	if world.name == "world":
		connect("player_collided", world, "item_collected")

func _on_collect_body_entered(body):
	if body.name == "player":
		emit_signal("player_collided")
		queue_free()

func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
