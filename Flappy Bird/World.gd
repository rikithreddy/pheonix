extends Node2D

var level1 = preload("res://levels/level1.tscn")
var score = 0
	
func _ready():
	var offset = 0
	for i in range(5):
		var x = level1.instance()
		x.position.x += offset
		offset += 800
		add_child(x)

func _process(delta):
	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().change_scene("res://World.tscn")
	if Input.is_action_just_pressed("toggle_fullscreen"):
		OS.window_fullscreen = !OS.window_fullscreen

func game_over():
	get_tree().change_scene("res://World.tscn")
	
func item_collected():
	score += 1
	$ui/score.text = "score:" + str(score)
