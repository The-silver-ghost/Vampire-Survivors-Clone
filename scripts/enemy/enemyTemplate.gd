class_name enemy
extends CharacterBody2D

var health = 5
var speed = 25
var dmg = 1
@onready var spriteDirection = $AnimatedSprite2D

func takeDamage():
	pass

func dealDamage():
	pass

func death():
	pass

func movement():
	if (InfiniteMap.playerCoordinates.x - global_position.x >= 5):
		#facing right
		spriteDirection.flip_h = true
		velocity.x = speed
	elif (InfiniteMap.playerCoordinates.x - global_position.x < -5):
		#facing left
		spriteDirection.flip_h = false
		velocity.x = -speed
	else:
		spriteDirection.flip_h = false
		velocity.x = 0
	
	if (InfiniteMap.playerCoordinates.y - global_position.y > -1):
		#above player
		velocity.y = speed
	elif (InfiniteMap.playerCoordinates.y - global_position.y < 1):
		#below player
		velocity.y = -speed
	
	move_and_slide()
