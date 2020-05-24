extends KinematicBody2D

const GRAVITY = 50
const SPEED = 150
const FLY = 150
var run = false
var velocity = Vector2.ZERO

func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	
	if Input.is_action_just_pressed("ui_accept"):
		run = true
	if run == true:
	
		velocity.x = SPEED
		velocity.y = GRAVITY
		
		if Input.is_action_pressed("ui_up"):
			velocity.y = -FLY

		velocity = move_and_slide(velocity)
