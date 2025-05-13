extends CharacterBody2D


const SPEED = 80



func _physics_process(_delta: float) -> void:
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var directionUD := Input.get_axis("ui_up", "ui_down")
	var directionLR := Input.get_axis("ui_left", "ui_right")
	
	if not velocity.x == 0:
		velocity.x = velocity.x - 5
		
	if not velocity.y == 0:
		velocity.y = velocity.y - 5
		
	if directionLR:
		velocity.x = directionLR * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		
	if directionUD:
		velocity.y = directionUD * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)

	move_and_slide()
