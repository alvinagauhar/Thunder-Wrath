extends CharacterBody2D

@export var SPEED= 400
func _physics_process(delta: float) -> void:
	
	#sideway movement
	if Input.is_action_pressed("left"):
		velocity= Vector2(-200,0)
	elif Input.is_action_pressed("right"):
		velocity= Vector2(200,0)
	else:
		velocity=Vector2(0,0)
	move_and_slide()
