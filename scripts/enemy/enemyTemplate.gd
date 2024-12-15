class_name enemy
extends CharacterBody2D

var health = 5
var speed = 50
var dmg = 1
@onready var spriteDirection = $AnimatedSprite2D

func movement():
	global_position.x += (InfiniteMap.playerCoordinates.x - global_position.x)/speed
	global_position.y += (InfiniteMap.playerCoordinates.y - global_position.y)/speed
	move_and_slide()

func takeDamage():
	pass

func dealDamage():
	pass

func death():
	pass

func animation():
	if (InfiniteMap.playerCoordinates.x - global_position.x >= 0):
		#facing right
		spriteDirection.flip_h = true
		velocity.x = speed
	elif (InfiniteMap.playerCoordinates.x - global_position.x < 0):
		#facing left
		spriteDirection.flip_h = false
		velocity.x = -speed
	else:
		spriteDirection.flip_h = false
	
	if (InfiniteMap.playerCoordinates.y - global_position.y >= 0):
		#above player
		velocity.y = speed
	elif (InfiniteMap.playerCoordinates.y - global_position.y < 0):
		#below player
		velocity.y = -speed
	
	move_and_slide()
