class_name enemy
extends CharacterBody2D

var health = 5
var speed = 10
var dmg = 1
@onready var spriteDirection = $AnimatedSprite2D

func takeDamage():
	pass

func dealDamage():
	pass

func death():
	pass


func movement(delta):
	global_position += ((InfiniteMap.playerCoordinates - global_position).normalized())*speed*delta
	move_and_slide()
	
	if (InfiniteMap.playerCoordinates.x - global_position.x >= 5):
		#facing right
		spriteDirection.flip_h = true
	elif (InfiniteMap.playerCoordinates.x - global_position.x < -5):
		#facing left
		spriteDirection.flip_h = false
	else:
		spriteDirection.flip_h = false
