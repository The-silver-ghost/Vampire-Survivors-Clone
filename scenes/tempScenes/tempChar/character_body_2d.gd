extends CharacterBody2D
class_name player

func _process(_delta):
	movement()
	coordinates()

func movement():
	if Input.is_action_pressed("ui_up"):
		velocity.y = -30
	elif Input.is_action_pressed("ui_down"):
		velocity.y = 30
	elif Input.is_action_pressed("ui_left"):
		velocity.x = -30
	elif Input.is_action_pressed("ui_right"):
		velocity.x = 30
	else:
		velocity.x = 0
		velocity.y = 0
	
	move_and_slide()

func coordinates():
	PlayerCoordinates.playerCoordinates = position
