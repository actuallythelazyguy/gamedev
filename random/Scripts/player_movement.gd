extends CharacterBody2D

@export var move_speed : float = 100

func _physics_process(delta):
	# Get Input Direction
	var input_direction = Vector2(
		Input.get_action_strength("right") - Input.get_action_strength("left"),
		Input.get_action_strength("down") - Input.get_action_strength("up")
		)
	
	print(input_direction)
	
	#Update Velocity
	velocity = input_direction * move_speed
	
	# Movement Processes
	move_and_slide()
