extends CharacterBody2D
class_name player

func _process(_delta):
	movement()
	coordinates()

func movement():
	if Input.is_action_pressed("ui_up"):
		velocity.y = -60
	elif Input.is_action_pressed("ui_down"):
		velocity.y = 60
	elif Input.is_action_pressed("ui_left"):
		velocity.x = -60
	elif Input.is_action_pressed("ui_right"):
		velocity.x = 60
	else:
		velocity.x = 0
		velocity.y = 0
	
	move_and_slide()

func coordinates():
	InfiniteMap.playerCoordinates = position
