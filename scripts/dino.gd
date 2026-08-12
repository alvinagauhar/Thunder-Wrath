extends CharacterBody2D

@export var movespeed= 400
@export var gravity= 980.0
@export var jumpspeed= -400

func _physics_process(delta: float) -> void:
	#Gravity 
	if not is_on_floor():
		velocity.y= velocity.y + gravity * delta
	else:
		velocity.y=0
	#jumping
	if Input.is_action_just_pressed("up") and is_on_floor():
		velocity.y = jumpspeed
	
	#sideway movement
	if Input.is_action_pressed("left"):
		velocity.x=-movespeed
	elif Input.is_action_pressed("right"):
		velocity.x= movespeed
	else:
		velocity.x=0
	move_and_slide()
