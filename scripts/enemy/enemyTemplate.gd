class_name enemy
extends Node2D

var health = 5
var speed = 50
var dmg = 1
@onready var spriteDirection = $AnimatedSprite2D

func movement():
	global_position.x += (InfiniteMap.playerCoordinates.x - global_position.x)/speed
	global_position.y += (InfiniteMap.playerCoordinates.y - global_position.y)/speed

func takeDamage():
	pass

func dealDamage():
	pass

func death():
	pass

func animation():
	if (InfiniteMap.playerCoordinates.x - global_position.x >= 0):
		spriteDirection.flip_h = true
	elif (InfiniteMap.playerCoordinates.x - global_position.x < 0):
		spriteDirection.flip_h = false
	else:
		spriteDirection.flip_h = false
