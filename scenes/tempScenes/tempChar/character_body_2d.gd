extends CharacterBody2D
class_name player

func _process(_delta):
	movement()
	coordinates()

func movement():
	if Input.is_action_pressed("ui_up"):
		velocity.y = -100
	elif Input.is_action_pressed("ui_down"):
		velocity.y = 100
	elif Input.is_action_pressed("ui_left"):
		velocity.x = -100
	elif Input.is_action_pressed("ui_right"):
		velocity.x = 100
	else:
		velocity.x = 0
		velocity.y = 0
	
	move_and_slide()

func coordinates():
	InfiniteMap.playerCoordinates = global_position
